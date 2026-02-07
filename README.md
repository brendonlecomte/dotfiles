# Setup Process

Get the Dotfiles
`git clone https://github.com/brendonlecomte/dotfiles.git`

run `./install.sh` from within the dotfiles repo 

Follow the instructions if prompted


## Manual 
install brew
install tmux, neovim, etc

### SSH keys for github
`ssh-keygen -t ed25519 -b 4096 -C "email"`
`eval $(ssh-agent -s)` 
`ssh-add ~/.ssh/id_rsa`

`cat ~/.ssh/id_rsa` and copy that into github as a new key

run tmux source ~/.tmux.conf
install tmux plugin manager `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm` 
