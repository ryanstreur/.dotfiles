""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Interface

Plug 'marko-cerovac/material.nvim' " https://github.com/marko-cerovac/material.nvim
Plug 'kyazdani42/nvim-web-devicons' " https://github.com/kyazdani42/nvim-web-devicons

" Statusline
Plug 'adelarsq/neoline.vim'
"https://github.com/glepnir/galaxyline.nvim

Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'

" Source control
" Plug 'airblade/vim-gitgutter'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'

Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate', 'branch': '0.5-compat'} "https://github.com/nvim-treesitter/nvim-treesitter/tree/0.5-compat

call plug#end()

let g:material_style = 'deep ocean'
colorscheme material

luafile $HOME/.config/nvim/config.lua

