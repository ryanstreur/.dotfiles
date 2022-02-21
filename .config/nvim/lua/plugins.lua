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
  use 'williamboman/nvim-lsp-installer'
  use 'weilbith/nvim-lsp-smag' -- https://github.com/weilbith/nvim-lsp-smag


  use 'nvim-telescope/telescope.nvim' -- https://github.com/nvim-telescope/telescope.nvim

  use 'windwp/nvim-autopairs' -- https://github.com/windwp/nvim-autopairs
  use 'tpope/vim-surround' -- https://github.com/tpope/vim-surround

  -- Formatting
  use 'sbdchd/neoformat'

  -- Interface
  use 'kyazdani42/nvim-web-devicons' -- https://github.com/kyazdani42/nvim-web-devicons

use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
}

  -- Statusline
  -- use 'adelarsq/neoline.vim'
  --https://github.com/glepnir/galaxyline.nvim
  use 'vim-airline/vim-airline'
  use 'tpope/vim-sleuth'
  use 'editorconfig/editorconfig-vim'

  -- Source control
  -- Plug 'airblade/vim-gitgutter'
  use 'nvim-lua/plenary.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'

  -- https://github.com/christoomey/vim-tmux-navigator
  use 'christoomey/vim-tmux-navigator'

  -- Markdown
  use 'godlygeek/tabular'
  use 'preservim/vim-markdown'
  use 'bluz71/vim-moonfly-colors'

end)

