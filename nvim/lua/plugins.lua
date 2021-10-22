vim.cmd [[packadd packer.nvim]]

use = use


--------------------------------------------------------------------------------
-- Plugins
--------------------------------------------------------------------------------

local tree_keys=require("tree-config")

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  --------------------
  -- Brains
  --------------------
  use 'neovim/nvim-lspconfig' -- https://github.com/neovim/nvim-lspconfig
  use 'https://github.com/kabouzeid/nvim-lspinstall' -- https://github.com/kabouzeid/nvim-lspinstall
  use 'weilbith/nvim-lsp-smag' -- https://github.com/weilbith/nvim-lsp-smag

  -- Completion
  -- https://github.com/hrsh7th/nvim-cmp/
  use 'hrsh7th/nvim-cmp' -- Install nvim-cmp
  use 'hrsh7th/vim-vsnip' -- Install snippet engine (This example installs [hrsh7th/vim-vsnip](https://github.com/hrsh7th/vim-vsnip))
  use 'hrsh7th/cmp-buffer' -- Install the buffer completion source

  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  use 'windwp/nvim-autopairs' -- https://github.com/windwp/nvim-autopairs
  use 'tpope/vim-surround' -- https://github.com/tpope/vim-surround

  -- Formatting
  use 'sbdchd/neoformat'
  use 'lukas-reineke/format.nvim'

  -- Interface
  use 'kyazdani42/nvim-web-devicons' -- https://github.com/kyazdani42/nvim-web-devicons
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
  require'nvim-tree'.setup {
    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = false,
    ignore_ft_on_setup  = {},
    update_to_buf_dir   = {
      enable = true,
      auto_open = true,
    },
    auto_close          = false,
    open_on_tab         = false,
    hijack_cursor       = false,
    update_cwd          = false,
    diagnostics         = {
      enable = false,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      }
    },
    update_focused_file = {
      enable      = false,
      update_cwd  = false,
      ignore_list = {}
    },
    system_open = {
      cmd  = nil,
      args = {}
    },
    view = {
      width = 30,
      height = 30,
      side = 'left',
      auto_resize = false,
      mappings = {
        custom_only = true,
        list = tree_keys
      }
    }
  }


  -- Statusline
  use 'adelarsq/neoline.vim'
  --https://github.com/glepnir/galaxyline.nvim

  use 'tpope/vim-sleuth'
  use 'editorconfig/editorconfig-vim'

  -- Source control
  -- Plug 'airblade/vim-gitgutter'
  use 'nvim-lua/plenary.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'nvim-telescope/telescope.nvim' -- https://github.com/nvim-telescope/telescope.nvim

  use 'marko-cerovac/material.nvim' -- https://github.com/marko-cerovac/material.nvim
  use 'christoomey/vim-tmux-navigator' -- https://github.com/christoomey/vim-tmux-navigator

end)

