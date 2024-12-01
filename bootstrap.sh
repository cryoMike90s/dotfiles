#!/bin/bash

DOTFILES_DIR="$HOME/Repos/github.com/cryoMike90s/dotfiles"
XDG_CONFIG_HOME="$HOME/.config"

create_directories() {
  local directories=("$@")
  for dir in "${directories[@]}"; do
    mkdir -p "$dir"
  done
}

create_symlinks() {
  local items=("$@")
  for item in "${items[@]}"; do
    IFS=':' read -r source target <<<"$item"
    if [ -L "$target" ]; then
      echo "Removing existing symlink $target"
      unlink "$target"
    elif [ -d "$target" ]; then
      echo "Warning: $target is a directory. Skipping..."
      continue
    elif [ -e "$target" ]; then
      echo "Warning: $target already exists. Skipping..."
      continue
    fi
    ln -s "$DOTFILES_DIR/$source" "$target"
    echo "Created symlink for $source"
  done
}

common_directories=(
)

common_items=(
)

create_directories "${common_directories[@]}"
create_symlinks "${common_items[@]}"

# MacOS specific setup
if [[ "$OSTYPE" == darwin* ]]; then
  macos_directories=(
    "$HOME/.qutebrowser"
  )
  macos_items=(
    "qutebrowser/config.py:$HOME/.qutebrowser/config.py"
  )
  create_directories "${macos_directories[@]}"
  create_symlinks "${macos_items[@]}"
fi
