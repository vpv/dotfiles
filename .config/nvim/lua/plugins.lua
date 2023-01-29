return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
    ts_update()
    end,
  }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'EdenEast/nightfox.nvim'
  use 'nvim-lualine/lualine.nvim'
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
     requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      {'nvim-tree/nvim-web-devicons'}
    }
  }
end)
