" ==============================
" vim-which_key
" ==============================
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
call which_key#register('<Space>', "g:which_key_map")


let g:which_key_map =  {}
let g:which_key_map.f = { 
    \ 'name' : 'file' ,
    \ 's' : 'save' ,
    \}

let g:which_key_map.e = { 
    \ 'name' : 'config' ,
    \ 'e' : 'edit' ,
    \ 'r' : 'source' ,
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

