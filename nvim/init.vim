" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
" vim directory ~/.vim/plugged
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()
