set nocompatible


" Set line numbers and relative line numbers
set number
set relativenumber
syntax on

" Show whitespace using the characters listed
set list
set listchars=eol:¬,trail:~,space:.,tab:>\

" Remove trailing whitespace on save.
autocmd BufWritePre * :%s/\s\+$//e

source ~/.config/vim/plugins.vim
source ~/.config/vim/indent.vim
source ~/.config/vim/which-key.vim
source ~/.config/nvim/coc.nvim.vim
source ~/.config/vim/nerdtree.vim

let NERDTreeQuitOnOpen=1
let &t_ut=''

set termguicolors

set background=dark
colorscheme codedark
