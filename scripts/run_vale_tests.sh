#!/bin/zsh

set -e  # Exit on any error

EXPECTED_DIR="auth-mkdocs"
CONFIG_DIR="config"
VALE_STYLES_DIR=".github/styles"

# Ensure script is run from the correct directory
[ "$(basename "$(pwd)")" != "$EXPECTED_DIR" ] && { echo "Error: Run from '$EXPECTED_DIR' directory."; exit 1; }

# Check for essential files and directories
[ ! -f ".vale.ini" ] && { echo "Error: Missing '.vale.ini'."; exit 1; }
[ ! -d "$CONFIG_DIR" ] && { echo "Error: Missing '$CONFIG_DIR'."; exit 1; }
[ ! -d "docs" ] || [ ! -d "includes" ] && { echo "Error: Missing 'docs' or 'includes'."; exit 1; }


# Install Vale if missing
if ! command -v vale >/dev/null; then
    echo "Vale not found. Installing..."
    case "$(uname -s)" in
        Linux) curl -fsSL https://github.com/errata-ai/vale/releases/latest/download/vale-linux.tar.gz | tar xz && sudo mv vale /usr/local/bin/ ;;
        Darwin) brew install vale ;;
        *) echo "Unsupported OS. Install Vale manually."; exit 1 ;;
    esac
fi

# Run Vale tests
echo "Running Vale tests..."
vale --version
vale sync
vale docs/**/*.md includes/**/*.md > vale_out.txt

# Process Vale results
if grep -qE '[1-9][0-9]* errors' "vale_out.txt"; then
    echo "Vale Errors. Check vale_out.txt"
    exit 1
else
    echo "No Vale Errors"
    rm -f "$VALE_OUTPUT"
fi
