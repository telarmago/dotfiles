source ~/.vimrc

" fix cursor type (underline) with neovim and iterm
set guicursor=

" plugins, managed with vim-plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
call plug#end()

" enable 24-bit color
set termguicolors
" onedark.vim color theme settings
let g:onedark_terminal_italics=1
colorscheme onedark
" make background default/clear
highlight Normal ctermbg=NONE guibg=NONE 

" Goyo settings
let g:goyo_height=100
" fix Goyo and background color
function! s:goyo_leave()
  highlight Normal ctermbg=NONE guibg=NONE
endfunction
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" keybinds
let mapleader=" "
nnoremap <Leader>g :Goyo<CR>
