#!/bin/sh

# Creates root directories if they don't exist
mkdir -p "$HOME/.config" >/dev/null 2>&1

# Get the directory of the script
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Remove existing files if they exist
rm -f "$HOME/.zshrc"
rm -f "$HOME/.bashrc"
rm -f "$HOME/.aliases"
rm -f "$HOME/.config/starship.toml"

# Create symlinks for the dotfiles
if command -v zsh >/dev/null 2>&1; then
    # Create symlink only if zsh is installed
    ln -s "$SCRIPT_DIR/.zshrc" "$HOME/.zshrc"
else
    # Create symlink for bash, otherwise
    ln -s "$SCRIPT_DIR/.bashrc" "$HOME/.bashrc"
fi
ln -s "$SCRIPT_DIR/.aliases" "$HOME/.aliases"

# Create a symlink for the starship configuration
ln -s "$SCRIPT_DIR/.config/starship.toml" "$HOME/.config/starship.toml"

# Install starship
curl -sS https://starship.rs/install.sh | sh -s -- -y
