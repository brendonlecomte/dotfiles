#! /bin/bash

ln -sf $PWD/bashrc ~/.bashrc
ln -sf $PWD/bash_profile ~/.bash_profile
ln -sf $PWD/vimrc ~/.vimrc

if [ "$(uname)" == "Darwin" ]; then
  ln -sf $PWD/tmux.conf.osx ~/.tmux.conf
  brew install tmux
  brew install python3-pip
  brew install fish
  brew install neovim
  ln -sf $PWD/config ~/.config
else
  deb_packages="tmux python3-pip fish neovim"
  sudo apt -y install ${deb_packages}
  ln -sf $PWD/tmux.conf ~/.tmux.conf
  ln -sf $PWD/config/fish ~/.config/fish
  ln -sf $PWD/config/kitty ~/.config/kitty
  ln -sf $PWD/config/vim ~/.config/vim
fi

ln -sf $PWD/tools ~/.tools

pip3 install powerline-status

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
