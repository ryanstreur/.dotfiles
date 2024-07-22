""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
" Managed by Vundle
" https://github.com/VundleVim/Vundle.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
 
" Colors

Plugin 'tomasr/molokai'

" Editor
""""""""""""""""""""

" Interface Features
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Source Control
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/goyo.vim'


" Motion, Navigation, Search
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'easymotion/vim-easymotion'

" Editing
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'

" Syntax, Format, Tags
Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Guide Configuration
" https://github.com/yggdroot/indentline

" Ctrl P Config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,bower_components,vendor,bundle
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '/\(\.git\|node_modules\)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }

" Vim-Markdown Config
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_autowrite = 1
let g:markdown_enable_folding = 1
let g:vim_markdown_conceal = 1

""""""""""""""""""""
" Omnicomplete
""""""""""""""""""""
set omnifunc=syntaxcomplete#Complete


set conceallevel=1
set foldlevel=2

" EditorConfig Config

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

