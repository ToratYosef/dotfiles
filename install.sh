#!/usr/bin/env bash
set -e

echo "🔧 Installing dotfiles..."

# Link aliases
ln -sf "$PWD/.bash_aliases" "$HOME/.bash_aliases"

# Ensure bash loads them
grep -qxF "source ~/.bash_aliases" "$HOME/.bashrc" || echo "source ~/.bash_aliases" >> "$HOME/.bashrc"

# Load immediately
if [ -n "$BASH_VERSION" ]; then
  source "$HOME/.bash_aliases" || true
fi

echo "✅ Dotfiles installed successfully"
