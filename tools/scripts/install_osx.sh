#! /bin/bash

if ! brew -h 1>/dev/null; then
  # install brew if we don't already have it
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash
fi

# ensure brew is up to date
brew update

# install required packages
brew install tmux
brew install python3-pip
brew install fish
brew install neovim
brew install node
brew install llvm

# link config folder into root directory
ln -sf $1/config ~/.config
