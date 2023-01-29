lua require('plugins')
lua require('myconfigs')

" for nvim-treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable                     " Disable folding at startup.
