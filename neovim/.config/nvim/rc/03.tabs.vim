" tab or buf 1
nnoremap <leader>1 :call utils#tab_buf_switch(1)<cr>
" tab or buf 2
nnoremap <leader>2 :call utils#tab_buf_switch(2)<cr>
" tab or buf 3
nnoremap  <leader>3 :call utils#tab_buf_switch(3)<cr>
" tab or buf 4
nnoremap  <leader>4 :call utils#tab_buf_switch(4)<cr>
" tab or buf 5
nnoremap  <leader>5 :call utils#tab_buf_switch(5)<cr>
" tab or buf 6
nnoremap  <leader>6 :call utils#tab_buf_switch(6)<cr>
" tab or buf 7
nnoremap  <leader>7 :call utils#tab_buf_switch(7)<cr>
" tab or buf 8
nnoremap  <leader>8 :call utils#tab_buf_switch(8)<cr>
" tab or buf 9
nnoremap  <leader>9 :call utils#tab_buf_switch(9)<cr>

" tab navigation like zsh
:nmap <leader>h :bp<CR>
:nmap <leader>l :bn<CR>
:nmap <leader>w :bd<CR>:bn<CR>:bp<CR>
