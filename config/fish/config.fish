
set -x POWERLINE (pip3 show powerline-status | grep "Location*" | cut -d " " -f2 )

if test -d $POWERLINE/powerline/bindings/fish
	set fish_function_path $fish_function_path  "$POWERLINE/powerline/bindings/fish"
	source $POWERLINE/powerline/bindings/fish/powerline-setup.fish
	powerline-setup
end

alias vi="nvim"
alias vim="nvim"
alias oldvi="vim"
alias tmux="tmux -2 attach"



# Invoke tmux to start in fish shell
if test -z $TMUX
    tmux
end
