" ==============================
" base set
" ==============================
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set encoding=utf-8

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

set scrolloff=4

set syntax=on

set hidden
set nobackup
set nowritebackup
"set dir=~/.vim/tmp

" 设置超过80长度提示
set colorcolumn=81

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set list lcs=tab:\|\ 

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" ==============================
" keymap
" ==============================

" leader
let mapleader=" "

" source 
nmap R :source $MYVIMRC<CR>

" quit
nmap <silent> <LEADER>qq :q<CR>
nmap <silent> <LEADER>qa :qa<CR>
nmap <silent> <LEADER>qw :wq<CR>

" file
nmap <silent> <LEADER>fs :w<CR>

" buffer
nmap <silent> <LEADER>b[ :bprevious<CR>
nmap <silent> <LEADER>b] :bnext<CR>
nmap <silent> <LEADER>bd :bdelete<CR>
nmap <silent> <LEADER>bb :buffers<CR>

" window
nmap <silent> <LEADER>wv :vsp<CR>
nmap <silent> <LEADER>ww <C-w><C-w>
nmap <silent> <LEADER>wq <C-w>q
nmap <silent> <LEADER>wl <C-w>l
nmap <silent> <LEADER>wh <C-w>h

" tab
nmap <silent> <LEADER><TAB>n :tabe<CR>
nmap <silent> <LEADER><TAB><TAB> :tabnext<CR>

" plug
nmap <LEADER>pi :PlugInstall<CR>

" ==============================
" plug
" ==============================
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'fatih/vim-go'
Plug 'itchyny/vim-cursorword'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'junegunn/fzf.vim'

call plug#end()

" ==============================
" airline
" ==============================
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'

" ==============================
" gruvbox
" ==============================
set background=dark
" let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox

" ==============================
" nerdtree
" ==============================
nmap <silent> <LEADER>tt :NERDTreeToggle<CR>

" ==============================
" vim-go
" ==============================
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

" ==============================
" indentLine
" ==============================

" ==============================
" markdown-preview
" ==============================
let g:mkdp_browser = 'google-chrome-stable'

" ==============================
" fzf
" ==============================
nmap <silent> <LEADER>ff :Files<CR>
nmap <silent> <LEADER>fg :GFiles<CR>
nmap <silent> <LEADER>fb :Buffers<CR>
nmap <silent> <LEADER>fr :History<CR>
nmap <silent> <LEADER>fm :Maps<CR>
