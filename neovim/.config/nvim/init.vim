source ~/.vimrc

" fix cursor with neovim
set guicursor=

" plugins, managed with vim-plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
call plug#end()

" onedark.vim color theme settings
set termguicolors                           " enable 24-bit color
let g:onedark_terminal_italics=1
colorscheme onedark
highlight Normal ctermbg=NONE guibg=NONE    " make background default or "clear"
