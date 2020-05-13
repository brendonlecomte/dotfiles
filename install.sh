#! /bin/bash

ln -sf $PWD/bashrc ~/.bashrc
ln -sf $PWD/bash_profile ~/.bash_profile
ln -sf $PWD/vimrc ~/.vimrc

ln -sf $PWD/tmux.conf ~/.tmux.conf
#if [ "$(uname)" == "Darwin" ]; then
#  ln -sf $PWD/tmux.conf.osx ~/.tmux.conf
#else
#  ln -sf $PWD/tmux.conf.linux ~/.tmux.conf
#fi
