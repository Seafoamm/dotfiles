#!/bin/bash

# This script copies the dotfiles from the repository to your home directory.

# Get the directory of this script
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# The directory in the repo that contains the files to be copied
DOTFILES_DIR="$REPO_DIR/home"

# Your home directory
HOME_DIR="$HOME"

# Iterate over all files in the dotfiles directory
for file in "$DOTFILES_DIR"/*; do
  # Get the filename
  filename=$(basename "$file")

  # The destination path in your home directory
  destination="$HOME_DIR/.$filename"

  # Copy the file
  echo "Copying $file to $destination"
  cp "$file" "$destination"
done

echo "Dotfiles installation complete."
