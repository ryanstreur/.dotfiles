set nocompatible              " be iMproved, required
filetype off                  " required

" Colors
set background=dark
if (has("termguicolors"))
  set termguicolors
endif

" Tabs??? Spaces???
set expandtab
set shiftwidth=2
set tabstop=2
set smartindent
set smarttab

set linebreak
set breakindent

set belloff=all
set autoread
set noswapfile
set wildmenu
set incsearch
set hlsearch
set number

set ignorecase
set smartcase

set splitbelow
set splitright

" Make the cursorline an underline instead of a highlight
" https://stackoverflow.com/questions/33936915/how-to-underline-rather-than-highlight-the-current-line-in-vim
set cursorline

syntax enable
filetype plugin indent on

" File Tree Options
let g:netrw_liststyle=3
let g:netrw_winsize=12
let g:netrw_banner=0
let g:netrw_browsex_viewer="open"

let g:python3_host_prog="/Users/ryan.streur/.pyenv/versions/nvim/bin/python"
