syntax on
set background=dark
" solarized options 
colorscheme NeoSolarized

hi Normal guibg=NONE ctermbg=NONE

if has("termguicolors")
    " enable true color
    set termguicolors
endif

set guifont=Fira\ Code:h14

filetype off  " required!
filetype plugin indent on     " required!

"For vim-move
let g:move_key_modifier = 'C'

"For ack
let g:ackprg = 'ag --nogroup --nocolor --column'

"For Youdao Translater Plugin
vnoremap <silent> <C-T> <Esc>:Ydv<CR> 
nnoremap <silent> <C-T> <Esc>:Ydc<CR> 

"inoremap jj <Esc>
 
set guifont=Source\ Code\ Pro\ for\ Powerline\ :h18

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" 设定文件浏览器目录为当前目录  
set bsdir=buffer  
" 设置编码  
set encoding=utf-8  
set nocompatible
set laststatus=2
" 设置文件编码  
set fenc=utf-8 

"set to use clipboard of system
set clipboard=unnamed

" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  

"显示行号  
set number
"Show related row numbers
set relativenumber

"settings for backspace
set backspace=2
set backspace=indent,eol,start

"忽略大小写查找
set ic

" tab宽度  
set tabstop=2  
set cindent shiftwidth=2  
set autoindent shiftwidth=2 

" set 折叠
set foldmethod=indent
" 打开文件默认不折叠
set foldlevelstart=99

"set my leader
let mapleader=","

"For neomake
map <leader>m :Neomake<CR>
let g:neomake_open_list = 2
let g:neomake_list_height = 7

"Disable highlight
map <leader>n :nohl<CR>

" coc settings
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

" Settings for vim-easymotion
let g:EasyMotion_leader_key = ","
 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png,*.gif,*.jpeg,.DS_Store  " MacOSX/Linux

" settings for resize splitted window
nmap w[ :vertical resize -3<CR>
nmap w] :vertical resize +3<CR>

nmap w- :resize -3<CR>
nmap w= :resize +3<CR>

" code search
let g:ackprg = 'ag --nogroup --nocolor --column'
