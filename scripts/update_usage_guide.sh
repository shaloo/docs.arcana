#!/bin/ksh

# Function to print an error and exit
error_exit() {
    echo "Error: $1"
    exit 1
}

# Check if exactly two arguments are passed
if [[ $# -ne 2 ]]; then
    error_exit "Usage: $0 <source_markdown_file> <github_url>"
fi

# Assign input parameters to variables
SOURCE_FILE=$1
TARGET_FILE=$2

# Validate that the source file exists and is a markdown file
[[ -f $SOURCE_FILE && $SOURCE_FILE == *.md ]] || [ -f $TARGET_FILE && $TARGET_FILE == *.md ]]\
    error_exit "Source and Target file must exist and have a .md extension."

# Temporary file to store the downloaded GitHub content
TEMP_T_FILE=$(mktemp)

cp $TARGET_FILE $TEMP_T_FILE

# Ensure the downloaded file is not empty
if [[ ! -s $TEMP_T_FILE ]]; then
    error_exit "Target file is empty."
fi

# Temporary file to store intermediate content
TEMP_FILE=$(mktemp)

# Remove content in the source file starting from "## Installation"
awk '/^[[:space:]]*##[[:space:]]*Installation[[:space:]]*$/ { exit } { print }' "$SOURCE_FILE" > "$TEMP_FILE" || \
    error_exit "Failed to process source file."

# Extract content from the GitHub file starting from "## Installation"
awk 'BEGIN { copy = 0 } /^[[:space:]]*##[[:space:]]*Installation[[:space:]]*$/ { copy = 1 } copy { print }' "$TEMP_T_FILE" >> "$TEMP_FILE" || \
    error_exit "Failed to process downloaded GitHub file."

# Overwrite the source file with the modified content
mv "$TEMP_FILE" "$SOURCE_FILE" || error_exit "Failed to update source file."

# Cleanup temporary files
rm -f "$TEMP_T_FILE"

# Print success message
echo "Success! Content from $TARGET_FILE has been merged into $SOURCE_FILE starting at ## Installation."

exit 0
