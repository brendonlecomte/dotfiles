#!/bin/zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ensure brew is up to date
brew update

# install required packages
brew install tmux
brew install --HEAD neovim
brew install lazygit
brew install --cask bitwarden
brew install --cask rectangle
brew install --cask ghostty
brew install gnupg
brew install ripgrep
brew install fzf

# new terminal theme manager...
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# link config folder into root directory
ln -sf "$1/config" ~/.config
