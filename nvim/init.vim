set nu
set tabstop=4 softtabstop=4
set nohlsearch
set nowrap
set noswapfile
set signcolumn=yes
set scrolloff=8

call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme gruvbox
let g:airline_theme='gruvbox'