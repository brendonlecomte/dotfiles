set nocompatible


set number
set relativenumber
syntax on

" auto-install of vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-git', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yank', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'}
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
call plug#end()

source ~/.config/vim/which-key.vim
source ~/.config/nvim/coc.nvim.vim

" Automatically install missing plugins on startup                                                      
autocmd VimEnter *                                                                                      
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))                                         
  \|   PlugInstall --sync | q                                                                           
  \| endif  

let NERDTreeQuitOnOpen=1
let &t_ut=''

set termguicolors

set background=dark
colorscheme codedark
