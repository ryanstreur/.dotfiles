vim.cmd [[packadd packer.nvim]]

use = use


--------------------------------------------------------------------------------
-- Plugins
--------------------------------------------------------------------------------


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
  use 'lukas-reineke/format.nvim'

end)

