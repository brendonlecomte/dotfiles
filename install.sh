#! /usr/bin/env bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

# Install required tools
# OS dependant config folder links
if [ "$(uname)" == "Darwin" ]; then
    source $SCRIPTPATH/tools/scripts/install_osx.sh $SCRIPTPATH
else
    source $SCRIPTPATH/tools/scripts/install_ubuntu.sh $SCRIPTPATH
fi

# Install Rolling Lunarvim
LV_BRANCH=rolling 
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/rolling/utils/installer/install.sh)

# Link key files and folders
ln -sf $SCRIPTPATH/profile ~/.profile
ln -sf $SCRIPTPATH/vimrc ~/.vimrc
ln -sf $SCRIPTPATH/tools ~/.tools
ln -sf $SCRIPTPATH/tmux.conf ~/.tmux.conf
ln -sf $SCRIPTPATH/clang-format-defaults ~/.clang-format

# Install the powerline display bar
pip3 install powerline-status

# Install Kitty. GPU powered terminal
read -r -p "Install Kitty Terminal? [y/N]" response
if [[ "$response" =~ ^([yY])$ ]]; then
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
fi

# Call the setup script for git & ssh key
source $SCRIPTPATH/tools/scripts/setup_git.sh

