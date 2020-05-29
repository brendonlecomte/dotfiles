let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_use_floating_win = 0

" Define prefix dictionary
let g:which_key_map =  {}

" Define a separator
let g:which_key_sep = '→'

nnoremap <silent> <leader>e :NERDTreeToggle<CR>
let g:which_key_map.e = 'Open NERDTree'

nnoremap <silent> <leader>f :Files<CR>
let g:which_key_map.f = "Find in files"
" Register which key map
