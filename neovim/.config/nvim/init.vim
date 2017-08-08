syntax on
" set color theme
"colorscheme busybee

set background=dark
" solarized options 
colorscheme solarized
hi Normal ctermfg=252 ctermbg=none

" Configuration section of vundle
filetype off  " required!

call plug#begin('~/.local/share/nvim/plugged')

" My Bundles here:
Plug 'mileszs/ack.vim'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim' 
Plug 'vim-scripts/xml.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rails'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-easymotion'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-jedi'

Plug 'neomake/neomake'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/wildfire.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'ianva/vim-youdao-translater'
Plug 'matze/vim-move'
Plug 'pbrisbin/vim-mkdir'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"Plugins for golang
Plug 'fatih/vim-go', { 'for': 'go' }

"Plugins for ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'

"Plugin(s) for Rust
Plug 'rust-lang/rust.vim'

call plug#end()


"Check syntastic by neomake
"autocmd BufWritePost * Neomake
"autocmd BufEnter * Neomake
"autocmd VimEnter * UpdateRemotePlugins .

filetype plugin indent on     " required!
 " End of vundle configuration

"For vim-move
let g:move_key_modifier = 'C'

"For ack
let g:ackprg = 'ag --nogroup --nocolor --column'

"Settings for Golang
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap gd <Plug>(go-def-tab)

"For Youdao Translater Plugin
vnoremap <silent> <C-T> <Esc>:Ydv<CR> 
nnoremap <silent> <C-T> <Esc>:Ydc<CR> 

"inoremap jj <Esc>
 
"Powerline setting
let g:airline_theme='molokai'

"Set GUI font type
"if has("gui_running")
let g:airline_powerline_fonts = 1
set guifont=Source\ Code\ Pro\ for\ Powerline\ :h18
"endif


"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"Setup SuperTab
let g:SuperTabRetainCompletionType="context"

"For Indent Guides Plugin
"let g:indent_guides_enable_on_vim_startup = 1

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
let mapleader="\<Space>"
let g:mapleader="\<Space>"

"tabs
nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove

"For Rust settings
let g:rustfmt_autosave = 1

"For neomake
map <leader>m :Neomake<CR>
let g:neomake_open_list = 2
let g:neomake_list_height = 7

"Disable highlight
map <leader>n :nohl<CR>

"  映射NERDTree插件
"let loaded_nerd_tree=1
let NERDTreeQuitOnOpen = 0
let NERDChristmasTree=1
let g:NERDTreeWinSize = 32 
map <leader>f :NERDTreeToggle<CR>

" Settings for vim-easymotion
let g:EasyMotion_leader_key = ","

"Settings for TagBar
map <leader>g :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds' : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin' : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"switch window
:map <leader>w <C-W>w

"set zen coding
 let g:user_zen_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \  'erb' : {
  \    'extends' : 'html',
  \  },
  \}
 
"set CtrlP
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"use in  edit
imap <C-A> <C-C><c-p>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png,*.gif,*.jpeg,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" move lines up or down (command - D)
nmap <D-j> mz:m+<cr>`z
nmap <D-k> mz:m-2<cr>`z
vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Tab move lines left or right (c-Ctrl,s-Shift)
nmap    <c-tab>     v>
nmap    <s-tab>     v<
vmap    <c-tab>     >gv
vmap    <s-tab>     <gv

" tab navigation like zsh
:nmap <leader>h :tabprevious<CR>
:nmap <leader>l :tabnext<CR>

" settings for resize splitted window
nmap w[ :vertical resize -3<CR>
nmap w] :vertical resize +3<CR>

nmap w- :resize -3<CR>
nmap w= :resize +3<CR>

"scss,sass
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.sass set filetype=scss

"coffee script
au BufWritePost *.coffee silent CoffeeMake!
au BufWritePost *.coffee :CoffeeCompile watch vert

"let skim use slim syntax
au BufRead,BufNewFile *.skim set filetype=slim

"for python
au BufRead,BufNewFile *.py set shiftwidth=4 tabstop=4 softtabstop=4 expandtab smarttab autoindent

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" neocomplete like
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#json_directory = '~/.cache/deoplete/go/'

" code search
let g:ackprg = 'ag --nogroup --nocolor --column'

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" For startify
"let g:startify_custom_header = [
"\ ' _   _        _  _          _____  _             _ ',
"\ '| | | |  ___ | || |  ___   |_   _|(_) _ __ ___  | |',
"\ '| |_| | / _ \| || | / _ \    | |  | ||  _   _ \ | |',
"\ '|  _  ||  __/| || || (_) |   | |  | || | | | | ||_|',
"\ '|_| |_| \___||_||_| \___/    |_|  |_||_| |_| |_|(_)',
"\ '',
"\ '',
"\]

let g:startify_custom_header = [
\ '    ██╗  ██╗███████╗██╗     ██╗      ██████╗     ████████╗██╗███╗   ███╗    ██╗',
\ '    ██║  ██║██╔════╝██║     ██║     ██╔═══██╗    ╚══██╔══╝██║████╗ ████║    ██║',
\ '    ███████║█████╗  ██║     ██║     ██║   ██║       ██║   ██║██╔████╔██║    ██║',
\ '    ██╔══██║██╔══╝  ██║     ██║     ██║   ██║       ██║   ██║██║╚██╔╝██║    ╚═╝',
\ '    ██║  ██║███████╗███████╗███████╗╚██████╔╝       ██║   ██║██║ ╚═╝ ██║    ██╗',
\ '    ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝        ╚═╝   ╚═╝╚═╝     ╚═╝    ╚═╝',
\ '',
\ '',
\]
