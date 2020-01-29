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
Plugin 'ludovicchabant/vim-gutentags'

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

" Font
if has ("gui_running")
  if has ("gui_gtk2")
    :set guifont=Courier\ New\ 10
  elseif has ("gui_win32")
    :set guifont=Courier_New:h10:cANSI
  endif
endif

""""
" Dein Section
""""

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')

  call dein#add('Shougo/denite.nvim')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

call denite#custom#alias('source', 'file/rec/git', 'file/rec')
call denite#custom#var('file/rec/git', 'command',
\ ['git', 'ls-files', '-co', '--exclude-standard'])
nnoremap <silent> <C-p> :<C-u>DeniteProjectDir file/rec 
"\ `finddir('.git', ';') != '' ? 'file/rec/git' : 'file/rec'`<CR>

" Ripgrep command on grep source
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
    \ ['-i', '--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

filetype plugin indent on
syntax enable

" Custom Keybindings
nnoremap <AS-f> :Denite -start-filter grep:::!<CR>
nnoremap <AS-;> :Denite grep:::!<CR>

"" Emmet
let g:user_emmet_leader_key = '<C-y>'

" doesn't work nnoremap <M-Up> ddkPk=j

" doesn't work nnoremap <M-Down> ddjpj=k
" GitGutter colors

highlight GitGutterAdd    guifg=#009900 guibg=<X>
highlight GitGutterChange guifg=#bbbb00 guibg=<X>
highlight GitGutterDelete guifg=#ff2222 guibg=<X>
