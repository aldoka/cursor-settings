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

echo ""
echo "✅ Settings updated successfully!"
echo "   Rules: $SCRIPT_DIR/rules/"
echo "   Commands: $SCRIPT_DIR/commands/"
