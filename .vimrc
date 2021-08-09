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

" File Tree Options
let g:netrw_liststyle=3
let g:netrw_winsize=12
let g:netrw_banner=0

syntax enable

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keyboard Shortcut Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Meta+Shift+F formats a file
map <M-S-F> :normal gg=G<C-O>

" CTRL+/ comments a line
nnoremap <C-/> gcl
inoremap <C-/> gcci

" Timestamp shortcuts
function DateTimestamp()
  return strftime("%a %m/%d/%y %I:%M %p")
endfunction

function Timestamp()
  return strftime("%I:%M %p")
endfunction

nnoremap <M-T> "=DateTimestamp()<CR>P
inoremap <M-T> <C-R>=DateTimestamp()<CR>

nnoremap <M-t> "=Timestamp()<CR>P
inoremap <M-t> <C-R>=Timestamp()<CR>


inoremap {<CR> {<CR>}<C-o>O

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make the cursorline an underline instead of a highlight
" https://stackoverflow.com/questions/33936915/how-to-underline-rather-than-highlight-the-current-line-in-vim
set cursorline

filetype plugin indent on
syntax enable
