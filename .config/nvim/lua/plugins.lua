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
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
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
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'rafamadriz/friendly-snippets'
-- use 'sitiom/nvim-numbertoggle' -- I could not get this to work properly
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
     requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      {'nvim-tree/nvim-web-devicons'}
    }
  }

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
      }
    end
  }
end)
