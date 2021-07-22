" Testing these two
let mapleader = " "
let maplocalleader = ","

set textwidth=80
set colorcolumn=80
set ruler

" for po.vim
let g:po_translator="Ville-Pekka Vainio <vpvainio@iki.fi>"

" Syntastic recommended defaults start
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Syntastic recommended defaults end
