set nocompatible
syntax on
filetype on
filetype plugin on

set encoding=utf-8 
set fileformat=unix

set scrolloff=3
set number

set shiftwidth=4

set tabstop=8
set softtabstop=4
set expandtab
set autoindent
set mouse=a

set noswapfile
set nowrap
set shiftround
set smartcase
set incsearch
set wildmenu
set wildmode=list:longest
set ttyfast

set history=1000
set undolevels=1000

set gdefault

set backspace=indent,eol,start

set title
set nobackup

set cursorline

set showmatch
set hlsearch

au FileType sh,make,python,ruby,puppet let comment = '#'
au FileType c,cpp,java,javascript,go let comment = '//'
au FileType vim let comment = '"'

set laststatus=2 
set statusline=%F%m%r%h%w%=(%{&ff}/%Y/%{&fenc})\ (line\ %l/\%L,\ col\ %c)

let g:ConqueTerm_Color=1
let g:ConqueTerm_ReadUnfocused=1

filetype plugin on
map <F2> :NERDTree
map <F3> :ConqueTerm bash

" Pathogen
call pathogen#infect()

" Powerline
"let g:Powerline_symbols = "fancy"
