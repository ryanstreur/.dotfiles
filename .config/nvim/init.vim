set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.config/nvim/bundle/Vundle.vim

""""""""""""""""""""
" Plugins
""""""""""""""""""""

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Editor
Plugin 'ctrlpvim/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*     " MacOSX/Linux

Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'

" Tags
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'


" Languages
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'

" Editing
Plugin 'scrooloose/nerdcommenter'

Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_toml_frontmatter = 1

" Writing
Plugin 'junegunn/goyo.vim'
Plugin 'jceb/vim-orgmode'

" Outlining
Plugin 'vimoutliner/vimoutliner'

" Colors
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

set wrap linebreak nolist
set number relativenumber

colorscheme elflord

