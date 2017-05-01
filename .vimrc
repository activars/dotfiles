set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sickill/vim-monokai'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" ##### General Configuration #####
set number              " enable line number
set history=1000        " larget commandline history
set showmode            " show current mode in status window
set autoread            " reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" turn on syntax highlighting
syntax on

let mapleader=","
" ##### Swap Files #####
set noswapfile
set nobackup
set nowb

" ##### Indentation #####
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab


" ##### Plugin Configurations ######
" === Color Theme
syntax enable
set background=dark

colorscheme monokai

" === MacVim Font
set guifont=Monaco:h14

" === NERDTree Mappings
" Open Nerg Tree with <Leader>n
map <Leader>n <esc>:NERDTreeToggle<cr>
" Revel current file in NERDTree with <Leader>r
map <Leader>r <esc>:NERDTreeToggle<cr>
" Improves UI 
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" === Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'

