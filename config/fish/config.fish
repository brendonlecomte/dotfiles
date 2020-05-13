
if test -d $POWERLINE/bindings/fish
	set fish_function_path $fish_function_path  "$POWERLINE/bindings/fish"
	source $POWERLINE/bindings/fish/powerline-setup.fish
	powerline-setup
end

alias tmux="tmux -2 attach"
