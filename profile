export PATH=~/.tools/helpers:$PATH
export EDITOR=nvim
export TERM=xterm-256color

export VIMINIT="source ~/.vimrc"
export MYVIMRC="~/.vimrc"

alias vi="nvim"
alias vim="nvim"

if [ -d ~/.local/bin ]; then
    export PATH=~/.local/bin:$PATH
fi

if [ -d ~/arcanist ]; then
    export PATH=~/arcanist/arcanist/bin:$PATH
    source ~/arcanist/arcanist/resources/shell/bash-completion
fi

if [ $(which arc) ]; then
    export PATH=~/.tools/arctools:$PATH
fi

if [ $(which powerline-daemon) ]; then
    powerline-daemon -q
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ "$(uname)" == "Darwin" ] && [ -d $(brew --prefix llvm) ]; then
    export PATH=$(brew --prefix llvm)/bin:$PATH
fi

if [ -n "$KITTY_WINDOW_ID" ] && [ -n $(which fish) ]; then
    SHELL=fish
    exec fish
fi

alias dotfiles="git -C ~/dotfiles"
