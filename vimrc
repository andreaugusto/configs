set nocompatible

" Pathogen
call pathogen#infect()
set encoding=utf-8 

" Powerline
set laststatus=2 
"let g:Powerline_symbols = "fancy"

set tabstop=4
set expandtab
set autoindent
set statusline=[FORMATO=%{&ff}]\ [TIPO=%y]\ [linha=%04l,%04v][%p%%]\ [LINHAS=%L]\ [COD=%{&fenc}]\ %F%m%r%h%w
set shiftwidth=4
set number
set mouse=a
syntax on

let g:ConqueTerm_Color=1
let g:ConqueTerm_ReadUnfocused=1

filetype plugin on
"let Tlist_CTags='/usr/bin/ctags/'
map <F2> :NERDTree
map <F3> :ConqueTerm bash
