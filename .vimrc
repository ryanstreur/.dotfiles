set nocompatible              " be iMproved, required
filetype off                  " required

" Colors
set background=dark
if (has("termguicolors"))
  set termguicolors
endif

" Make the gutters darker than the background.

set expandtab
set shiftwidth=2
set tabstop=2
set smartindent

set linebreak
set breakindent

set belloff=all
set autoread
set noswapfile
set wildmenu
set incsearch
set hls
set nu

set ignorecase

syntax enable

" Keyboard Shortcut Config
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>
inoremap {<CR> {<CR>}<C-o>O

filetype plugin indent on
syntax enable

source $HOME/.vim-plugins.vim
