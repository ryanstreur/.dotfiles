""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Leader
nnoremap <Space> <Nop>
let mapleader=" "

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
" Netrw
function! NetrwMapping()
  "nmap <buffer> l <CR>

  nmap <buffer> . gh
  nmap <buffer> P <C-w>z

  "nmap <buffer> L <CR>:Lexplore<CR>
  nmap <buffer> <Leader>dd :Lexplore<CR>
  nmap <buffer> q :Lexplore<CR>
endfunction

" fun! BrowseLeft()
  " netrw#Call("")
" endfun

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

" let g:Netrw_UserMaps=[["l", "netrw-cr"]]
