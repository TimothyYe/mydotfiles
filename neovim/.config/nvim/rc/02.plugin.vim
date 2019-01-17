call plug#begin('~/.local/share/nvim/plugged')

" My Bundles here:
Plug 'iCyMind/NeoSolarized'
Plug 'mileszs/ack.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim' 
Plug 'vim-scripts/xml.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

Plug 'neomake/neomake'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/wildfire.vim'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'ianva/vim-youdao-translater'
Plug 'matze/vim-move'
Plug 'pbrisbin/vim-mkdir'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"Plugins for golang
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

"Plugin(s) for Rust
Plug 'rust-lang/rust.vim'

call plug#end()
