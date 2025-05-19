#!/usr/bin/bash

# Exit if stow is not installed
if ! command -v stow >/dev/null 2>&1; then
  echo "Error: GNU Stow is not installed. Please install it first." >&2
  exit 1
fi

configs=("doom_emacs emacs nvim tmux vim ssh")

# Stow selected packages
for config in "${configs[@]}"; do
  echo "Stowing $config"
  stow $config
done
