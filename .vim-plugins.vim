""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
" Managed by Vundle
" https://github.com/VundleVim/Vundle.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
 
" Colors

Plugin 'morhetz/gruvbox'

" Editor
""""""""""""""""""""

" Interface Features
" Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/Yggdroot/indentLine.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Source Control
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Completion
Plugin 'dense-analysis/ale'
Plugin 'ycm-core/YouCompleteMe'

" Motion, Navigation, Search
Plugin 'tpope/vim-unimpaired'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion' "https://github.com/easymotion/vim-easymotion
Plugin 'christoomey/vim-tmux-navigator'

" Editing
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'

Plugin 'wincent/Command-T'

" Syntax, Format, Tags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'editorconfig/editorconfig-vim'

" Language-Specific
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'posva/vim-vue'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'ElmCast/elm-vim'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'gabrielelana/vim-markdown'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'junegunn/goyo.vim'

Plugin 'https://github.com/vim-scripts/utl.vim.git'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indent Guide Configuration
" https://github.com/yggdroot/indentline

" NERDTree Config
" Start NERDTree on opening vim into a directory
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" let NERDTreeShowHidden=1

" Ctrl P Config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,bower_components,vendor
let g:ctrlp_show_hidden = 1

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
let g:syntastic_javascript_checkers = ['eslint']
"
" Omnicomplete
set omnifunc=syntaxcomplete#Complete

"JavaScript

let g:javascript_plugin_jsdoc = 1
augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END

let g:javascript_conceal_function             = "ƒ"
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
" let g:javascript_conceal_static               = "•"
" let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

" Easytags config
let g:easytags_async = 1

set conceallevel=1
set foldlevel=2

""""""""""""""""""""
" ALE Config
""""""""""""""""""""
let g:ale_fixers = {
      \  'javascript': ['prettier'],
      \  'css': ['prettier'],
    \  'html': ['prettier'],
    \  'json': ['prettier'],
    \}

let g:ale_fix_on_save = 1


" EditorConfig Config

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
