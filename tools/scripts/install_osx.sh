#! /bin/bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ensure brew is up to date
brew update

# install required packages
brew install tmux
brew install --HEAD neovim

# new terminal theme manager...
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# link config folder into root directory
ln -sf $1/config ~/.config
