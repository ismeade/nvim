" =============================
" base set
" ==============================
set number " 行号
set relativenumber " 相对行号
set cursorline " 当前行高亮
set wrap
set showcmd
set wildmenu

" 拼写检查
" set spell
set encoding=UTF-8

set mouse=a

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" 锁进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

set scrolloff=4

set syntax=on

set hidden
set updatetime=300
set shortmess+=c
"set dir=~/.vim/tmp

" 设置超过80长度提示
set colorcolumn=81

let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"

set clipboard+=unnamedplus

"set list lcs=tab:\.\ 
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

"let g:loaded_python_provider = 0
let g:loaded_perl_provider = 0

"let g:python3_host_prog = '/usr/bin/python3'
