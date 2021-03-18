#! /bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

# Install required tools
# OS dependant config folder links
if [ "$(uname)" == "Darwin" ]; then
  brew install tmux
  brew install python3-pip
  brew install fish
  brew install neovim
  brew install node
  brew install llvm
  ln -sf $SCRIPTPATH/config ~/.config
else
  deb_packages="tmux python3-pip fish neovim nodejs npm clangd-9 powerline-fonts"
  sudo apt -y install ${deb_packages}
  ln -sf $SCRIPTPATH/config/fish ~/.config/fish
  ln -sf $SCRIPTPATH/config/kitty ~/.config/kitty
  ln -sf $SCRIPTPATH/config/vim ~/.config/vim
  ln -sf $SCRIPTPATH/config/nvim ~/.config/nvim
fi

# Link key files and folders
ln -sf $SCRIPTPATH/profile ~/.profile
ln -sf $SCRIPTPATH/vimrc ~/.vimrc
ln -sf $SCRIPTPATH/tools ~/.tools
ln -sf $SCRIPTPATH/tmux.conf ~/.tmux.conf

# Install the powerline display bar
pip3 install powerline-status

# Install Kitty. GPU powered terminal
read -r -p "Install Kitty Terminal? [y/N]" response
if [[ "$response" =~ ^([yY])$ ]]; then
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
fi

# Call the setup script for git & ssh key
source $SCRIPTPATH/tools/scripts/setup_git.sh

