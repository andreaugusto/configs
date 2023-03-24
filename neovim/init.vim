"Required:
call plug#begin()

"Bundles:
"Plug 'klen/python-mode'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'JulesWang/css.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Yggdroot/indentLine'
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'bling/vim-airline'
Plug 'chemzqm/vim-jsx-improve'
Plug 'genoma/vim-less'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'rakr/vim-one'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'
Plug 'w0rp/ale'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'python/black'
Plug 'nanotech/jellybeans.vim'
Plug 'sotte/presenting.vim'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'
Plug 'neovim/nvim-lspconfig'
Plug 'styled-components/vim-styled-components'
Plug 'jparise/vim-graphql'
Plug 'OmniSharp/omnisharp-vim'
Plug 'kchmck/vim-coffee-script'
Plug 'puremourning/vimspector'


"Required:
call plug#end()

"Required:
filetype plugin indent on

"Some configs----------------------------------
syntax on
"set t_Co=256

colorscheme jellybeans

"set laststatus=2
set relativenumber
set number
set noswapfile
set nowrap
set backspace=indent,eol,start
set title
set nobackup
set cursorline
set showmatch
set hlsearch
set hidden

set scrolloff=3

set autoindent
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=8
set ttyfast
set hlsearch

"set smartcase
"set incsearch

"set wildmenu
"set wildmode=list:longest

set history=10000
set undolevels=10000

set encoding=utf-8 
set background=dark

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

filetype plugin indent on
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype typescriptreact setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype css setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 sts=0 expandtab
autocmd FileType javascript set formatprg=prettier\ --single-quote\ --trailing-comma\ --stdin
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype json setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype html setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype htmldjango setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype make setlocal ts=4 sw=4 sts=0 noexpandtab autoindent
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

:autocmd BufWritePre *.py :pclose
:autocmd BufWritePre *.js :pclose
set completefunc=syntaxcomplete#Complete

"set noerrorbells visualbell t_vb=
"autocmd GUIEnter * set visualbell t_vb=
"--------------------------------------

"GUI-----------------------------------
"set guioptions-=T " Removes top toolbar
"set guioptions-=r " Removes right hand scroll bar
"set go-=L " Removes left hand scroll bar
"set guifont=Source\ Code\ Pro\ for\ Powerline
"--------------------------------------

"Keymaps-------------------------------
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

map <C-n> <Esc>:tabnext<CR>
map <F3> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
"--------------------------------------

"Set comments--------------------------
au FileType sh,make,python,ruby,puppet let comment = '#'
au FileType c,cpp,java,javascript,go let comment = '//'
au FileType vim let comment = '"'
"--------------------------------------

"CtrlP---------------------------------
let g:ctrlp_custom_ignore = 'node_modules\|git\|converage'

"Ale---------------------------------
let g:ale_linters = {
  \   'csh': ['shell'],
  \   'cs': ['OmniSharp'],
  \   'cpp': ['gcc', 'cpplint', 'cppcheck', 'flawfinder'],
  \   'go': ['gofmt', 'gometalinter'],
  \   'html': ['tidy'],
  \   'htmldjango': ['tidy'],
  \   'help': [],
  \   'perl': ['perlcritic'],
  \   'javascript': ['standard'],
  \   'javascript.jsx': ['standard'],
  \   'python': ['mypy'],
  \   'typescript': ['standard'],
  \   'rust': ['cargo'],
  \   'spec': [],
  \   'text': [],
  \   'zsh': ['shell'],
\}

let g:ale_fixers = {
  \   'cs': ['uncrustify'],
  \   'python': [
  \       'black',
  \       'remove_trailing_lines',
  \       'isort',
  \   ],
  \   'javascript': [
  \       'prettier',
  \       'prettier_standard',
  \       'standard',
  \       'remove_trailing_lines',
  \       'trim_whitespace'
  \   ],
  \   'javascript.jsx': [
  \       'prettier',
  \       'prettier_standard',
  \       'standard',
  \       'remove_trailing_lines',
  \       'trim_whitespace'
  \   ],
  \   'typescript': [
  \       'prettier',
  \       'prettier_standard',
  \       'standard',
  \       'remove_trailing_lines',
  \       'trim_whitespace'
  \   ],
  \   'cpp': [
  \       'clang-format',
  \       'remove_trailing_lines',
  \       'trim_whitespace'
  \   ]
\}

let g:ale_completion_enabled = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
let g:ale_fix_on_save = 1
let g:ale_python_mypy_options = '--namespace-packages'
let g:ale_python_pylint_options = '-d C0114,C0115,C0116'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title
set omnifunc=ale#completion#OmniFunc
"--------------------------------------
"
"OmniShapr---------------------------------
let g:OmniSharp_server_studio = 1
"nmap <Leader>td<Plug>OmniSharpDebugTest
"nmap <Leader>tr<Plug>OmniSharpRunTest
augroup omnisharp_commands
  autocmd!

  " Show type information automatically when the cursor stops moving.
  " Note that the type is echoed to the Vim command line, and will overwrite
  " any other messages in this space including e.g. ALE linting messages.
  autocmd CursorHold *.cs OmniSharpTypeLookup

  " The following commands are contextual, based on the cursor position.
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ospd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
  autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

  " Navigate up and down by method/property/field
  autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
  autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
  " Find all code errors/warnings for the current solution and populate the quickfix window
  autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
  " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  " Repeat the last code action performed (does not use a selector)
  autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
  autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

  autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

  autocmd FileType cs nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)

  autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
augroup END
"--------------------------------------
"Ctags---------------------------------
set tags=tags
"--------------------------------------
"
"LanguageClient------------------------
augroup filetype_js
    autocmd!
    autocmd BufReadPost *.js setlocal filetype=javascript
augroup END

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
            \ 'javascript': ['typescript-language-server --stdio'],
            \ 'typescript': ['typescript-language-server', '--stdio'],
            \ 'typescript.tsx': ['typescript-language-server', '--stdio'],
            \ 'typescriptreact': ['typescript-language-server', '--stdio'],
            \ 'cs': ['omnisharp'],
            \ 'python': ['pyls'],
            \ }
autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
let g:LanguageClient_loggingLevel = 'DEBUG'

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
"--------------------------------------

"NerdTree------------------------------
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$', '\node_modules']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
"--------------------------------------

"Airline-------------------------------
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1 
let g:airline#extensions#ale#enabled=1
let g:airline_theme='one'
"--------------------------------------

"Deoplete------------------------------
let g:deoplete#enable_at_startup=1
let g:deoplete_disable_auto_complete=1
"--------------------------------------

"One Theme-----------------------------
let g:one_allow_italics=1
"--------------------------------------

"Emmet-----------------------------
let g:user_emmet_settings = {
            \ 'javascript': {
            \   'extends': 'jsx'
            \}
            \}
"--------------------------------------

"Incsearch n Fuzzy---------------------
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)
"--------------------------------------

" Jellybeans
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
endif
set background=dark


"VIM JSX Typescript---------------------
hi tsxTagName guifg=#E06C75
hi tsxComponentName guifg=#E06C75
hi tsxCloseComponentName guifg=#E06C75

"Vimspector-----------------------------
nmap <Leader>db <Plug>VimspectorBreakpoints
nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>
