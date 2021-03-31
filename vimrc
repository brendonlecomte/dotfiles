set nocompatible

" Set line numbers and relative line numbers
set number
set relativenumber
syntax on

" Show whitespace using the characters listed
set list
set listchars=eol:¬,trail:~,tab:>\ ,space:.

" Remove trailing whitespace on save.
autocmd BufWritePre * :%s/\s\+$//e

" Tabs appear as 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" source plugin files
source ~/.config/vim/plugins.vim
source ~/.config/nvim/coc.nvim.vim
source ~/.config/vim/nerdtree.vim
source ~/.config/vim/which-key.vim
source ~/.config/vim/airline.vim
source ~/.config/vim/key_mapping.vim
source ~/.config/vim/blamer.vim
source ~/.config/vim/markdown.vim

" themes and colouring
let &t_ut=''
set termguicolors
set background=dark
colorscheme codedark
