alias pair="tmux -2 attach"
alias assume="source /opt/homebrew/bin/assume.fish"

set -x GOROOT /usr/local/go
set -x GOPATH $HOME/go
set -x GOBIN $GOROOT/bin

fish_add_path $GOROOT
fish_add_path $GOPATH 
fish_add_path $GOBIN 
fish_add_path ~/.local/bin

source /Users/brendon.lecomte/.config/fish/completions/granted_completer_fish.fish

# Invoke tmux to start in fish shell
if test -z "$TMUX"
    tmux -2 attach
end
