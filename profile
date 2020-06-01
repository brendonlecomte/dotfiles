export PATH=~/gcc-arm-none-eabi-8-2018-q4-major/bin/:$PATH
export EDITOR=nvim
export TERM=xterm-256color  

export VIMINIT="source ~/.vimrc"
export MYVIMRC="~/.vimrc"

alias vi="nvim"

if [ -d ~/.local/bin ]; then
    export PATH=~/.local/bin:$PATH
fi

if [ -d ~/arcanist ]; then
    export PATH=~/arcanist/arcanist/bin:$PATH
    source ~/arcanist/arcanist/resources/shell/bash-completion
fi

if [ -n $(which arc) ]; then 
    export PATH=~/.tools/arctools:$PATH
fi

if [ -f 'which powerline-daemon' ]; then
    powerline-daemon -q
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -n "KITTY_WINDOW_ID" ] && [ -f "which fish" ] ; then
    exec fish
fi
