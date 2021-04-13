" =============================
" base set
" ==============================
set number
set relativenumber
set cursorline
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

set encoding=utf-8

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

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set clipboard+=unnamedplus

set list lcs=tab:\.\ 
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

let g:loaded_python_provider = 0

" ==============================
" keymap
" ==============================

" leader
let mapleader=" "

" source 
nnoremap <LEADER>er :source $MYVIMRC<CR>
nnoremap <LEADER>ee :e $MYVIMRC<CR>

" quit
nnoremap <silent> <LEADER>qq :q<CR>
nnoremap <silent> <LEADER>qa :qa<CR>
nnoremap <silent> <LEADER>qw :wq<CR>
nnoremap <silent> <LEADER>Q :q!<CR>
nnoremap <silent> <LEADER>Qw :qw!<CR>

" save
nnoremap <silent> <LEADER>fs :w<CR>
inoremap <silent> <C-s> <ESC>:w<CR>a

" buffer
nnoremap <silent> <LEADER>b[ :bprevious<CR>
nnoremap <silent> <M-h> :bprevious<CR>
nnoremap <silent> <LEADER>b] :bnext<CR>
nnoremap <silent> <M-l> :bnext<CR>
nnoremap <silent> <LEADER>bd :bdelete<CR>
nnoremap <silent> <LEADER>bb :buffers<CR>

" window
nnoremap <silent> <LEADER>wv :vsp<CR>
nnoremap <silent> <LEADER>ww <C-w><C-w>
nnoremap <silent> <LEADER>wq <C-w>q
nnoremap <silent> <LEADER>wl <C-w>l
nnoremap <silent> <LEADER>wh <C-w>h

" tab
nnoremap <silent> <LEADER><TAB>n :tabe<CR>
nnoremap <silent> <LEADER><TAB><TAB> :tabnext<CR>
nnoremap <silent> <LEADER><TAB>d :tabclose<CR>

" plug
nnoremap <LEADER>pi :PlugInstall<CR>

" editer
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" disable <Up><Down><Left><Right>
nnoremap <silent> <Up> <nop>
nnoremap <silent> <Down> <nop>
nnoremap <silent> <Left> <nop>
nnoremap <silent> <Right> <nop>

"inoremap <silent> <Up> <nop>
"inoremap <silent> <Down> <nop>
"inoremap <silent> <Left> <nop>
"inoremap <silent> <Right> <nop>

if system('uname -r') =~ 'Microsoft'
    augroup Yank
        autocmd!
        autocmd TextYankPost * :call system('clip.exe ',@w)
    augroup END
endif

" ==============================
" plug
" ==============================
call plug#begin('~/.config/nvim/plugged')

"UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
"Plug 'junegunn/seoul256.vim'
"Plug 'doums/darcula'
"Plug 'hardcoreplayers/gruvbox9'
Plug 'mhinz/vim-startify'

"DIR
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

"EDIT
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'honza/vim-snippets'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/vim-cursorword'
Plug 'lfv89/vim-interestingwords'
Plug 'Yggdroot/indentLine'
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
Plug 'gcmt/wildfire.vim'

"GO
Plug 'fatih/vim-go'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'jiangmiao/auto-pairs'
Plug 'voldikss/vim-floaterm'

call plug#end()

" ==============================
" airline
" ==============================
let laststatus = 2
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '   "tabline中未激活buffer两端的分隔字符
" let g:airline#extensions#tabline#left_alt_sep = '|'      "tabline中buffer显示编号
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'

" ==============================
" theme
" ==============================
set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
"let g:seoul256_background = 233
"colorscheme seoul256

" ==============================
" nerdtree
" ==============================
nmap <silent> <LEADER>tt :NERDTreeToggle<CR>
let g:NERDTreeMapActivateNode = '<tab>'

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

let NERDTreeWinSize=40

" 没有指定文件时，自动打开，启动页会无效
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
"autocmd VimEnter * if argc() == 0 | :NERDTreeToggle | endif

" 打开目录时，自动打开，启动页会无效
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" ==============================
" coc
" ==============================
let g:coc_global_extensions = [
 \ 'coc-vimlsp',
 \ 'coc-java',
 \ 'coc-html',
 \ 'coc-htmlhint',
 \ 'coc-vetur',
 \ 'coc-eslint',
 \ 'coc-json',
 \ 'coc-yaml',
 \ 'coc-pairs',
 \ 'coc-snippets']

"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <silent><expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? coc#_select_confirm() :
      "\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ "\<TAB>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"inoremap <silent><expr> <c-d> coc#refresh()

let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nmap <silent> <leader>cr <Plug>(coc-rename)
nmap <silent> <leader>jd <Plug>(coc-definition)
nmap <silent> <leader>jy <Plug>(coc-type-definition)
nmap <silent> <leader>ji <Plug>(coc-implementation)
nmap <silent> <leader>jr <Plug>(coc-references)
nmap <silent> <leader>cf <Plug>(coc-format) 
nmap <silent> <M-i> <Plug>(coc-codeaction)
nmap <silent> <leader>cl <Plug>(coc-codelens-action)
nmap <silent> <M-CR> <Plug>(coc-fix-current)
nmap <silent> <leader>ct <Plug>(coc-template-top)
"nmap <c-]> <Plug>(coc-definition)
"nmap <c-[> <c-o>


let g:snips_author = 'Liyang'

"autocmd BufNewFile .gitignore CocCommand template.templateTop
"autocmd BufNewFile .java CocCommand template.templateTop
"autocmd BufNewFile .go CocCommand template.templateTop
"autocmd BufNewFile .html CocCommand template.templateTop

" todolist
nmap <silent> <leader>tc :CocCommand todolist.create<CR>
nmap <silent> <leader>tl :CocList todolist<CR>

"autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
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

autocmd FileType go nmap <leader>gb  <Plug>(go-build)
autocmd FileType go nmap <leader>gl  <Plug>(go-lint)
autocmd FileType go nmap <leader>gr  <Plug>(go-run)
autocmd FileType go nmap <leader>gt  <Plug>(go-test)

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>ga :cclose<CR>

" ==============================
" indentLine
" ==============================

" ==============================
" markdown-preview
" ==============================
let g:mkdp_browser = 'google-chrome-stable'
let g:mkdp_page_title = '${name}'

let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 1
    \ }

" ==============================
" fzf
" ==============================
nmap <silent> <LEADER>sf :Files<CR>
nmap <silent> <LEADER>sg :GFiles<CR>
nmap <silent> <LEADER>sb :Buffers<CR>
nmap <silent> <LEADER>sr :History<CR>
nmap <silent> <LEADER>sm :Maps<CR>
nmap <silent> <LEADER>ss :BLines<CR>
nmap <silent> <LEADER>sa :Lines<CR>


" ==============================
" lzaygit
" ==============================

" setup mapping to call :LazyGit
noremap <silent> <leader>lg :LazyGit<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window

" ==============================
" floaterm
" ==============================
let g:floaterm_position = 'bottomright'
let g:floaterm_width = 0.6
let g:floaterm_height = 0.4
let g:floaterm_autoclose = 1

let g:floaterm_keymap_toggle = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_new    = '<F10>'
