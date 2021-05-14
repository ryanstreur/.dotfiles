set nocompatible              " be iMproved, required
filetype off                  " required

" Colors
set background=dark
if (has("termguicolors"))
  set termguicolors
endif

source $HOME/.vim-plugins.vim

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

" File Tree Options
let g:netrw_liststyle=3
let g:netrw_winsize=12
let g:netrw_banner=0

syntax enable

" Keyboard Shortcut Config
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>
inoremap {<CR> {<CR>}<C-o>O

filetype plugin indent on
syntax enable


" Make the cursorline an underline instead of a highlight
" https://stackoverflow.com/questions/33936915/how-to-underline-rather-than-highlight-the-current-line-in-vim
set cursorline
hi clear CursorLine
hi CursorLine gui=underline cterm=underline ctermfg=None guifg=None
