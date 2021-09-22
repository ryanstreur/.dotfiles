source $HOME/.vim/settings.vim
source $HOME/.vim/mappings.vim

lua require('plugins')
lua require('config')
lua require('nvim-tree-config')

""""""""""""""""""""
" Telescope
""""""""""""""""""""
" Find files using Telescope command-line sugar.
nnoremap <C-P> <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,-L,--iglob=!\.git/*<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

""""""""""""""""""""
" Material Theme
""""""""""""""""""""
let g:material_style = 'deep ocean'
colorscheme material

""""""""""""""""""""
" Nvim-Tree
""""""""""""""""""""

nnoremap <Leader>b :NvimTreeToggle<CR>

tnoremap <Esc> <C-\><C-n>
nnoremap <C-`> :terminal
