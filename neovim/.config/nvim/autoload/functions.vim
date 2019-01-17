"1~9:tab 1~9 or buffer 1~9
function! functions#tab_buf_switch(num) abort
		execute 'normal '."\<Plug>AirlineSelectTab".a:num
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
