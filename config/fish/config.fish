alias pair="tmux -2 attach"

# Invoke tmux to start in fish shell
if test -z "$TMUX"
    tmux -2 attach
end
