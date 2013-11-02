set nocompatible
syntax on
filetype on
filetype plugin on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set rtp+=~/code/thirds/powerline/powerline/bindings/vim

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'kien/ctrlp.vim'

"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline
set guifont=Source\ Code\ Pro\ for\ Powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'

" The bundles you install will be listed here
filetype plugin indent on

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END

set encoding=utf-8 
"set fileformat=unix

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

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <c-t> <Esc>:tabnew<CR>

" Python Mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
