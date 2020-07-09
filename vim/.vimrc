" remove .viminfo, .netrwhist, swap files
:autocmd VimLeave * :!rm ~/.viminfo
let g:netrw_dirhistmax=0
set noswapfile

syntax on               " turn syntax highlighting on
set autoindent          " automatically indent next line
" set number            " show line numbers
" set colorcolumn=80    " show column guide

" tabs -> spaces
set expandtab           " hitting tab results in spaces
set softtabstop=4       " insert/remove X spaces with tab/backspace
set shiftwidth=4        " move X spaces when indenting with '>>'
" set tabstop=4         " show existing tabs as X spaces wide

set ignorecase          " ignore case for searches
set smartcase           " case-sensitive when search contains uppercase character
