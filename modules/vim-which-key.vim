" ==============================
" vim-which_key
" ==============================
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
call which_key#register('<Space>', "g:which_key_map")

let g:which_key_sep = '-'
let g:which_key_use_floating_win = 0 "不使用浮动窗口
let g:which_key_centered = 0 "左侧对齐
let g:which_key_group_dicts = 'end' "排序方式'' 'seat' 'end'


let g:which_key_map =  {}

"let g:which_key_map." = 'which_key_ignore'
let g:which_key_map.k = 'name'
let g:which_key_map.K = 'name'

let g:which_key_map.e = { 
    \ 'name' : 'config' ,
    \ 'e' : 'edit' ,
    \ 'r' : 'source' ,
    \}

let g:which_key_map.q = { 
    \ 'name' : 'quit' ,
    \ 'q' : 'quit' ,
    \ 'a' : 'quit' ,
    \ 'w' : 'save and quit' ,
    \}

let g:which_key_map.f = { 
    \ 'name' : 'file' ,
    \ 's' : 'save' ,
    \}

let g:which_key_map.b = { 
    \ 'name' : 'buffer' ,
    \ '[' : 'previous buffer <M-h>' ,
    \ ']' : 'next buffer <M-l>' ,
    \ 'd' : 'delete buffer' ,
    \ 'b' : 'list' ,
    \}

let g:which_key_map.w = { 
    \ 'name' : 'window' ,
    \ 'v' : 'vsplite' ,
    \ 'w' : 'next window' ,
    \ 'q' : 'close window' ,
    \ 'l' : 'move right window' ,
    \ 'h' : 'move left window' ,
    \}

let g:which_key_map.tab = { 
    \ 'name' : 'tab' ,
    \ 'n' : 'new tab' ,
    \ 'tab' : 'new tab' ,
    \ 'd' : 'close ' ,
    \}

let g:which_key_map.p = { 
    \ 'name' : 'plug' ,
    \ 'i' : 'install plug' ,
    \ 'u' : 'update plug' ,
    \ 'c' : 'clean plug' ,
    \}

let g:which_key_map.s = { 'name' : 'fzf' }

"let g:which_key_map.e = { 'env' : '+source' }
"let g:which_key_map.e.e = 'init.vim'


"let g:which_key_map.e = {
      "\ 'name' : '+config' ,
      "\ 'e' : 'open-vimrc' ,
      "\ 'r' : 'source-vimrc',
      "\ }

"let g:which_key_map['e'] = {
      "\'name' : '+config' ,
      "\'e' : [':e $MYVIMRC', 'open-vimrc'],
      "\'r' : [':source $MYVIMRC', 'source-vimrc'],
      "\}

