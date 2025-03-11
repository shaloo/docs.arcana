#!/bin/zsh

# Check if directory argument is provided
if [[ -z "$1" ]]; then
  echo "Usage: $0 <directory_path>"
  exit 1
fi

DOCS_DIR="$1"

# Ensure the directory exists and is not empty
if [[ ! -d "$DOCS_DIR" || -z $(find "$DOCS_DIR" -type f -name '*.md') ]]; then
  echo "Error: Directory is either missing or contains no Markdown (.md) files."
  exit 1
fi

# Define output directories
TMP_DOCS="/tmp/docs"
TMP_GRAMMAR="/tmp/grammar"

# Check if TMP directories exist and ask user before deleting them
if [[ -d "$TMP_DOCS" || -d "$TMP_GRAMMAR" ]]; then
  echo "Temporary directories ($TMP_DOCS and/or $TMP_GRAMMAR) already exist."
  read -q "REPLY?Do you want to delete and recreate them? (y/n) "
  echo ""
  if [[ "$REPLY" != "y" ]]; then
    echo "Aborting script to avoid overwriting existing data."
    exit 1
  fi
  rm -rf "$TMP_DOCS" "$TMP_GRAMMAR"
fi

# Create fresh TMP directories
mkdir -p "$TMP_DOCS" "$TMP_GRAMMAR"

# Counters
total_files=0
files_with_errors=0

# Function to check if the LanguageTool output contains errors
check_errors() {
    local file="$1"
    if [[ -s "$file" && $(wc -l < "$file") -gt 1 ]]; then
        return 0  # Errors found
    else
        return 1  # No errors
    fi
}

# Find all Markdown files recursively
find "$DOCS_DIR" -type f -name "*.md" | while read -r md_file; do
  total_files=$((total_files + 1))

  # Get relative path from docs/ and construct output paths
  relative_path="${md_file#$DOCS_DIR/}"
  temp_txt="$TMP_DOCS/${relative_path%.md}-temp.txt"
  clean_txt="$TMP_DOCS/${relative_path%.md}.txt"
  grammar_txt="$TMP_GRAMMAR/${relative_path%.md}.txt"

  # Ensure output directories exist
  mkdir -p "$(dirname "$temp_txt")"
  mkdir -p "$(dirname "$grammar_txt")"

  echo "Processing: $md_file"

  # Step 1: Convert Markdown to plain text
  pandoc -t plain -f markdown "$md_file" -o "$temp_txt"

  # Step 2: Clean up text using sed
  sed -E '
    s/\[\[[^|]+\|([^]]+)\]\]/\1/g;
    s/^=== *["“]?(.*)["”]?$/\1/g;
    /```mermaid/,/```/d;
    /```[a-zA-Z0-9]+/,/```/d;
    s/{{[^}]+}}'\''s//g;
    s/{{[^}]+}}[[:space:]]?'\''s//g;
    s/{{[^}]+}}//g;
    s/\[\s*:[^]]+\]\([^)]*\)//g;
    s/\[\s*:[^]]+\{[^}]+\}\s*([^\]]+)\]\([^)]*\)/\1/g;
    s/[[:space:]]{2,}/ /g;
    s/[[:space:]]+$//g;
    s/\{% include [\"'“”][^\"'“”]+[\"'“”] %\}//g;
  ' "$temp_txt" > "$clean_txt"

  # Step 3: Run LanguageTool and store output
  languagetool -l en-US "$clean_txt" > "$grammar_txt"

  # Step 4: Check if LanguageTool found errors
  if [[ $(wc -l < "$grammar_txt") -eq 1 ]] && grep -qE 'Time: [0-9]+ms for [0-9]+ sentences' "$grammar_txt"; then
    echo "No errors in: $md_file"
  else
    echo "⚠️ Errors found in: $md_file"
    files_with_errors=$((files_with_errors + 1))
  fi
done

# Final Summary
echo "\nProcessing Complete."
echo "Total files checked: $total_files"
echo "Files with errors: $files_with_errors"
if (( files_with_errors > 0 )); then
  echo "Check details in: $TMP_GRAMMAR"
else
  echo "No errors found in any files!"
fi
