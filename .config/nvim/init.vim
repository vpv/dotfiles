lua require('plugins')
lua require('myconfigs')

" for nvim-treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable                     " Disable folding at startup.

set number
set relativenumber

set expandtab
set tabstop=4
set shiftwidth=4
set smartcase
set undofile
