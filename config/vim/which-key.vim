let g:mapleader = "\<Space>"
let g:maplocalleader = ','

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function


" Define prefix dictionary
let g:which_key_map =  {}

" Define a separator
let g:which_key_sep = '→'
let g:which_key_map['e'] = [ ':NERDTreeToggle'            , 'explorer' ]
let g:which_key_map['E'] = [ ':NERDTreeFind'              , 'show-file-in-explorer']
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['Z'] = [ ':Goyo'                      , 'ZenMode']

" v is for Vim, or editor settings
let g:which_key_map.v = {
    \ 'name' : '+vim' ,
    \ 'r' : [':set norelativenumber!'                 , 'Relative Numbers'],
    \ 'n' : [':set nonumber!'                         , 'Line  Numbers'],
    \ 'L' : [':Limelight!! 0.5'                       , 'Limelight'],
    \ 'w' : [':set list!'                             , 'Whitespace Characters'],
    \ }

" v.t is for themes
let g:which_key_map.v.t = {
    \ 'name' : '+themes',
    \ 'd' : [':colorscheme codedark'                  , 'CodeDark'],
    \ 's' : [':colorscheme solarized8'                , 'Solarized'],
    \ 'g' : [':colorscheme gruvbox'                   , 'Gruvbox'],
    \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'v' : [':Vista!!'                            , 'tag viewer'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
