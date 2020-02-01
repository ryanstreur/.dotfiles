set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'


" Colors
Plugin 'sjl/badwolf'
Plugin 'flazz/vim-colorschemes'
Plugin 'reedes/vim-colors-pencil'

" Editor
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'https://github.com/Yggdroot/indentLine.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
let NERDTreeShowHidden=1

Plugin 'ludovicchabant/vim-gutentags'
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/Command-T'

Plugin 'Shougo/deoplete.nvim'
Plugin 'Shougo/denite.nvim'

" Languages
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'ElmCast/elm-vim'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'altercation/vim-colors-solarized'
Plugin 'junegunn/goyo.vim'
" Plugin 'https://github.com/rlue/vim-getting-things-down.git'

Plugin 'https://github.com/vim-scripts/utl.vim.git'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
"set spelllang=en-us

syntax enable

" Indent Guide Configuration
let g:indentLine_enabled = 0
let g:indent_guides_guide_size = 0
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


" NERDTree Config
" Start NERDTree on opening vim into a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Ctrl P Config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,bower_components,vendor
let g:ctrlp_working_path_mode = 'c'

" Ack search config
" Prefer rg > ag > ack
if executable('rg')
  let g:ackprg = 'rg -S --no-heading --vimgrep'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Vim-Markdown Config
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_autowrite = 1
let g:vim_markdown_conceal = 0


" Syntastic Recommended Config https://github.com/vim-syntastic/syntastic#3-recommended-settings 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" More Syntastic Config
let g:syntastic_html_tidy_ignore_errors=[
    \'proprietary attribute "ng-',
    \'proprietary attribute "pdk-'
    \
\]

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Keyboard Shortcut Config
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>

" Color Configuration
colorscheme monokai-phoenix
let g:badwolf_darkgutter = 1

filetype plugin indent on
syntax enable

highlight GitGutterAdd    guifg=#009900 guibg=<X>
highlight GitGutterChange guifg=#bbbb00 guibg=<X>
highlight GitGutterDelete guifg=#ff2222 guibg=<X>
