source $HOME/.vim/settings.vim
source $HOME/.vim/mappings.vim

lua require('plugins')
lua require('config')
lua require('tree-config')

""""""""""""""""""""
" Telescope
""""""""""""""""""""
" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files find_command=rg,-i,--hidden,--files,-L,-g=!.git,-g=!node_modules,-g=!build,-g=!Pods<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

""""""""""""""""""""
" Material Theme
""""""""""""""""""""
let g:material_style = 'darker'
colorscheme material

""""""""""""""""""""
" Nvim-Tree
""""""""""""""""""""

nnoremap <Leader>b :NvimTreeToggle<CR>

""""""""""""""""""""
" Other mappings
"""""""""""""""""""""

tnoremap <Esc> <C-\><C-n>
nnoremap <C-`> :terminal

