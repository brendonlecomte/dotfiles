#! /bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

# Install required tools
# OS dependant config folder links
if [ "$(uname)" == "Darwin" ]; then
  ln -sf $PWD/tmux.conf.osx ~/.tmux.conf
  brew install tmux
  brew install python3-pip
  brew install fish
  brew install neovim
  brew install node
  brew install llvm
  ln -sf $PWD/config ~/.config
else
  deb_packages="tmux python3-pip fish neovim nodejs npm clangd-9 powerline-fonts"
  sudo apt -y install ${deb_packages}
  ln -sf $PWD/tmux.conf ~/.tmux.conf
  ln -sf $PWD/config/fish ~/.config/fish
  ln -sf $PWD/config/kitty ~/.config/kitty
  ln -sf $PWD/config/vim ~/.config/vim
  ln -sf $PWD/config/nvim ~/.config/nvim
fi

# Link key files and folders
ln -sf $PWD/profile ~/.profile
ln -sf $PWD/vimrc ~/.vimrc
ln -sf $PWD/tools ~/.tools

# Install the powerline display bar
pip3 install powerline-status

# Install Kitty. GPU powered terminal
read -r -p "Install Kitty Terminal? [y/N]" response
if [[ "$response" =~ ^([yY])$ ]]; then
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
fi

# Call the setup script for git & ssh key
source $SCRIPTPATH/tools/scripts/setup_git.sh

