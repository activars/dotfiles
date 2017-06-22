" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
" vim directory ~/.vim/plugged
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'terryma/vim-multiple-cursors'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'vimlab/split-term.vim'


" Themes
Plug 'mhartington/oceanic-next'
Plug 'sickill/vim-monokai'

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Initialize plugin system
call plug#end()

" System Configuration
set shell=/usr/bin/zsh

" ##### Plugin Configurations ######
" === Color Theme
syntax enable

if (has("termguicolors"))
  set termguicolors
endif

if &term == "xterm"
  set t_Co=256
endif

colorscheme monokai

let mapleader = ','

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
let g:airline_theme='oceanicnext'

" === Enable Autocomplete with deoplete
let g:deoplete#enable_at_startup = 1
" highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
" highlight Pmenu ctermfg=2 ctermbg=3 guifg=#ffffff guibg=#0000ff


