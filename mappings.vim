" ==============================
" keymap
" ==============================

" leader
let g:mapleader="\<Space>"

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
        autocmd TextYankPost * :call system('/mnt/c/Windows/System32/clip.exe ',@w)
    augroup END
endif

