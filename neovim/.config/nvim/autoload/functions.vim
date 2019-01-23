"1~9:tab 1~9 or buffer 1~9
function! functions#tab_buf_switch(num) abort
		execute 'normal '."\<Plug>AirlineSelectTab".a:num
endfunction

" close current tab buffer
function! functions#tab_buf_close() abort
  let l:buf_current=bufnr('%')
  let l:buf_count=len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
  if l:buf_count == 0 
   return
        endif

  if l:buf_count == 1 
      execute ':bd '.l:buf_current
   return
        endif
        
  execute ':bp'
  execute ':bd '.l:buf_current
endfunction

let t:is_transparent = 0
function! functions#Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_tranparent = 0
    endif
endfunction
