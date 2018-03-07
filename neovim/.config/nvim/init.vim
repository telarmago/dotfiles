source ~/.vimrc

" fix cursor with neovim
set guicursor=

" plugins, managed with vim-plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'joshdick/onedark.vim'
call plug#end()

" onedark.vim color theme settings
let g:onedark_terminal_italics=1
colorscheme onedark
highlight Normal ctermbg=NONE
