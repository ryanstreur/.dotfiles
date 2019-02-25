set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" 
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
 

" Other Plugins
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
" Languages
Plugin 'pangloss/vim-javascript'
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

" OrgMode
Plugin 'https://github.com/jceb/vim-orgmode.git'

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
set foldcolumn=5

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
" let g:indent_guides_guide_size = 0
" let g:indent_guides_color_change_percent = 3
" let g:indent_guides_enable_on_vim_startup = 1


" NERDTree Config
" Start NERDTree on opening vim into a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Ctrl P Config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules
let g:ctrlp_working_path_mode = 'c'

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
colorscheme badwolf
let g:badwolf_darkgutter = 1

" Font
if has ("gui_running")
  if has ("gui_gtk2")
    :set guifont=Courier\ New\ 10
  elseif has ("gui_win32")
    :set guifont=Courier_New:h10:cANSI
  endif
endif

