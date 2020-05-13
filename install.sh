#! /bin/bash

ln -sf $PWD/bashrc ~/.bashrc
ln -sf $PWD/bash_profile ~/.bash_profile
ln -sf $PWD/vimrc ~/.vimrc
ln -sf $PWD/config ~/.config

if [ "$(uname)" == "Darwin" ]; then
  ln -sf $PWD/tmux.conf.osx ~/.tmux.conf
  brew install tmux
  brew install python3-pip
  brew install fish
else
  deb_packages="tmux python3-pip fish"
  sudo apt -y install ${deb_packages}
  ln -sf $PWD/tmux.conf.linux ~/.tmux.conf
fi
