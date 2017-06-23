" vim directory ~/.vim/plugged
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" Pugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'terryma/vim-multiple-cursors'
Plug 'kien/ctrlp.vim'                         " Fuzzy search within the directory 
Plug 'scrooloose/syntastic'                   " Code syntax validation and checking   
Plug 'scrooloose/nerdtree'                    " Project side bar
Plug 'tpope/vim-commentary'                       " Inline comments
Plug 'vim-airline/vim-airline'                " Status Bar
Plug 'vim-airline/vim-airline-themes'         " Themes
Plug 'tomasr/molokai'                         " Themes
Plug 'vimlab/split-term.vim'                  " Offer a terminal window  
Plug 'sheerun/vim-polyglot'                   " Offers a large list of code syntax 
Plug 'airblade/vim-gitgutter'                 " Display git changes in the left bar
Plug 'tpope/vim-fugitive'                     " Git operation in vim without terminal
Plug 'mhartington/oceanic-next'               " Themes
Plug 'chriskempson/base16-vim'                " Themes
Plug 'tpope/vim-unimpaired'                   " move current line/selection up or down 
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }  " Autocomplete feature

" Initialize plugin system
call plug#end()

" System Configuration
set shell=/usr/bin/zsh
set number

" ##### Plugin Configurations ######
" === Color Theme
syntax enable

if (has("termguicolors"))
		set termguicolors
endif

" if &term == "xterm"
" 	set t_Co=256
" endif

:set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
colorscheme base16-default-dark

" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=3
" === Keymapping
" nnoremap <C-[> :bprevious<CR>
" nnoremap <C-]> :bnext<CR>
" nnoremap <C-w> :bdelete<CR>

nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

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
let g:airline#extensions#tagbar#enabled = 1
let g:airline_theme='oceanicnext'

" === Enable Autocomplete with deoplete
let g:deoplete#enable_at_startup = 1
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#ffffff guibg=#0000ff


