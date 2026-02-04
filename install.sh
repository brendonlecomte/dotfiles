#! /usr/bin/env bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")


# Link key files and folders
ln -s $SCRIPTPATH/profile ~/.profile
ln -s $SCRIPTPATH/tools ~/.tools
ln -s $SCRIPTPATH/tmux.conf ~/.tmux.conf
ln -s $SCRIPTPATH/clang-format-defaults ~/.clang-format
ln -s $SCRIPTPATH/gitconfig ~/.gitconfig

# Install required tools
# OS dependant config folder links
if [ "$(uname)" == "Darwin" ]; then
    source $SCRIPTPATH/tools/scripts/install_osx.sh $SCRIPTPATH
else
    source $SCRIPTPATH/tools/scripts/install_ubuntu.sh $SCRIPTPATH
fi

# Call the setup script for git & ssh key
source $SCRIPTPATH/tools/scripts/setup_git.sh

