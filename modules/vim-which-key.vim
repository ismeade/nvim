" ==============================
" vim-which_key
" ==============================
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
call which_key#register('<Space>', "g:which_key_map")

let g:which_key_sep = '-'
let g:which_key_use_floating_win = 0 "不使用浮动窗口
let g:which_key_centered = 0 "是否中间对齐
let g:which_key_group_dicts = 'end' "排序方式'' 'seat' 'end'

"需要开启悬浮窗口
"let g:which_key_floating_opts = { 
            "\'row': '-1' ,
            "\'col': '4' ,
            "\'width': '-4' ,
            "\'height': '4' ,
            "\}


let g:which_key_map =  {}

"let g:which_key_map." = 'which_key_ignore'
"let g:which_key_map['"'] = { 'name' : 'which_key_ignore' }
let g:which_key_map.k = 'name'
let g:which_key_map.K = 'name'

let g:which_key_map.e = { 
    \ 'name' : '+config' ,
    \ 'e' : 'edit' ,
    \ 'r' : 'source' ,
    \}

let g:which_key_map.q = { 
    \ 'name' : '+quit' ,
    \ 'q' : 'quit' ,
    \ 'a' : 'all quit' ,
    \ 'w' : 'save and quit' ,
    \}

" find
let g:which_key_map.f = { 
    \ 'name' : '+file' ,
    \ 's' : 'save' ,
    \}

" buffer
let g:which_key_map.b = { 
    \ 'name' : '+buffer' ,
    \ '[' : 'previous buffer <M-h>' ,
    \ ']' : 'next buffer <M-l>' ,
    \ 'd' : 'delete buffer' ,
    \ 'b' : 'list' ,
    \}

" window
let g:which_key_map.w = { 
    \ 'name' : '+window' ,
    \ 'v' : 'vsplite' ,
    \ 'w' : 'next window' ,
    \ 'q' : 'close window' ,
    \ 'l' : 'move right window' ,
    \ 'h' : 'move left window' ,
    \}

" tab
let g:which_key_map.TAB = { 
    \ 'name' : '+tab' ,
    \ 'n' : 'new tab' ,
    \ 'tab' : 'new tab' ,
    \ 'd' : 'close' ,
    \}

" plug
let g:which_key_map.p = { 
    \ 'name' : '+plug' ,
    \ 'i' : 'install plug' ,
    \ 'u' : 'update plug' ,
    \ 'c' : 'clean plug' ,
    \}

" fzf
let g:which_key_map.s = { 
    \ 'name' : '+find' ,
    \ 'f' : 'find from file' ,
    \ 'g' : 'find from git' ,
    \ 'b' : 'find from buffer' ,
    \ 'r' : 'find from history' ,
    \ 'm' : 'find from mapping' ,
    \ 's' : 'find from buffer line' ,
    \ 'a' : 'find from line' ,
    \}

" vim-floaterm
let g:which_key_map.F7 = 'floaterm toggle'
let g:which_key_map.F8 = 'floaterm prev'
let g:which_key_map.F9 = 'floaterm next'
let g:which_key_map.F10 = 'floaterm new'

" nerdtree
let g:which_key_map.tt = 'nerdtree toggle'
"let g:which_key_map.t = {
    "\ 'name' : 'nerdtree' ,
    "\ 't' : 'nerdtree toggle' ,
    "\}

let g:which_key_map.lg = 'lazygit'

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

