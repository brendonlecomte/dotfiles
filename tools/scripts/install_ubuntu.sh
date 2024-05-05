#! /usr/bin/bash

# install all required packages
deb_packages="tmux neovim zsh nodejs npm clangd-9 powerline-fonts"
sudo apt -y install ${deb_packages}

# link all config files into correct dir
ln -sf $1/config/kitty ~/.config/kitty
ln -sf $1/config/nvim ~/.config/nvim
