#!/bin/bash
# Symlink dotfiles to their proper locations

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

echo "Linking dotfiles from $DOTFILES"

# Git
mkdir -p ~/.config/git
ln -sf "$DOTFILES/git/config" ~/.config/git/config
ln -sf "$DOTFILES/git/config-github" ~/.config/git/config-github
ln -sf "$DOTFILES/git/config-bitbucket" ~/.config/git/config-bitbucket

# Hyprland
mkdir -p ~/.config/hypr
for f in "$DOTFILES"/hypr/*; do
  ln -sf "$f" ~/.config/hypr/
done

# Kanshi
mkdir -p ~/.config/kanshi
ln -sf "$DOTFILES/kanshi/config" ~/.config/kanshi/config

# Kitty
mkdir -p ~/.config/kitty
ln -sf "$DOTFILES/kitty/kitty.conf" ~/.config/kitty/kitty.conf

# Neovim
mkdir -p ~/.config/nvim
ln -sf "$DOTFILES/nvim/init.lua" ~/.config/nvim/init.lua

# SSH
mkdir -p ~/.ssh
ln -sf "$DOTFILES/ssh/config" ~/.ssh/config
chmod 600 ~/.ssh/config

# Shell
ln -sf "$DOTFILES/shell/zshrc" ~/.zshrc
ln -sf "$DOTFILES/shell/zprofile" ~/.zprofile

echo "Done! Restart your shell to apply changes."
