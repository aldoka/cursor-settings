#!/bin/bash
# Script to update cursor settings (rules and commands) from cursor-rules repository
# This script works from .cursor/ directory which is the git repository root
# Uses sparse checkout to selectively download only needed files

set -e  # Exit on error

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SELECTED_PATHS="$SCRIPT_DIR/selected-paths.txt"

# Check if git repository exists
if [ ! -d "$SCRIPT_DIR/.git" ]; then
    echo "Error: Git repository not found at $SCRIPT_DIR"
    echo "Please initialize the cursor-rules repository first"
    exit 1
fi

# Check if selected-paths.txt exists
if [ ! -f "$SELECTED_PATHS" ]; then
    echo "Error: selected-paths.txt not found at $SELECTED_PATHS"
    echo ""
    echo "To fix this:"
    echo "  1. Copy the example file: cp selected-paths.txt.example selected-paths.txt"
    echo "  2. Edit selected-paths.txt and add paths to the rules and commands you need"
    echo "  3. Run this script again"
    echo ""
    exit 1
fi

# Change to repository directory
cd "$SCRIPT_DIR"

# Enable sparse-checkout
git config core.sparseCheckout true

# Update sparse-checkout configuration from selected-paths.txt
grep -v '^#' "$SELECTED_PATHS" | grep -v '^$' > .git/info/sparse-checkout

# Update working directory and pull latest changes
echo "Updating settings from cursor-rules repository..."
git read-tree -mu HEAD
git pull origin main

# Check if all files and folders from selected-paths.txt exist
echo ""
echo "Checking if all selected paths exist..."
HAS_MISSING=false
while IFS= read -r path || [ -n "$path" ]; do
    # Skip comments and empty lines
    [[ "$path" =~ ^[[:space:]]*# ]] && continue
    [[ -z "${path// }" ]] && continue
    
    # Remove leading/trailing whitespace
    path=$(echo "$path" | xargs)
    
    # Check if path exists (file or directory)
    if [ ! -e "$SCRIPT_DIR/$path" ]; then
        if [ "$HAS_MISSING" = false ]; then
            echo "⚠️  Warning: Some selected paths are missing after update!"
            echo ""
            echo "Missing paths:"
            HAS_MISSING=true
        fi
        echo "   - $path"
    fi
done < "$SELECTED_PATHS"

echo ""
if [ "$HAS_MISSING" = true ]; then
    echo "⚠️  Settings updated, but please check the missing paths above."
else
    echo "✅ Settings updated successfully!"
fi
echo "   Rules: $SCRIPT_DIR/rules/"
echo "   Commands: $SCRIPT_DIR/commands/"
