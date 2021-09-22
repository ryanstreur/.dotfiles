""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Interface

Plug 'kyazdani42/nvim-web-devicons' " https://github.com/kyazdani42/nvim-web-devicons
" Plug 'kyazdani42/nvim-tree.lua'

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

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate', 'branch': '0.5-compat'} "https://github.com/nvim-treesitter/nvim-treesitter/tree/0.5-compat

Plug 'nvim-telescope/telescope.nvim' " https://github.com/nvim-telescope/telescope.nvim

Plug 'marko-cerovac/material.nvim' " https://github.com/marko-cerovac/material.nvim
call plug#end()

""""""""""""""""""""
" Telescope
""""""""""""""""""""
" Find files using Telescope command-line sugar.
nnoremap <C-P> <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,-L,--iglob=!\.git/*<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

""""""""""""""""""""
" Material Theme
""""""""""""""""""""
let g:material_style = 'deep ocean'
colorscheme material
luafile $HOME/.config/nvim/config.lua


""""""""""""""""""""
" Nvim-Tree
""""""""""""""""""""

let nvim_tree_disable_netrw = 0

nnoremap <Leader>b :NvimTreeToggle<CR>
