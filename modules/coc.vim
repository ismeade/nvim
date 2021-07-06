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
 \ 'coc-translator',
 \ 'coc-snippets']

"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"inoremap <silent><expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
"inoremap <silent><expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

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

"coc-translator
" popup
nmap <Leader>jt <Plug>(coc-translator-p)
vmap <Leader>jt <Plug>(coc-translator-pv)


let g:snips_author = 'Liyang'

"autocmd BufNewFile .gitignore CocCommand template.templateTop
"autocmd BufNewFile .java CocCommand template.templateTop
"autocmd BufNewFile .go CocCommand template.templateTop
"autocmd BufNewFile .html CocCommand template.templateTop

" todolist
"nmap <silent> <leader>tc :CocCommand todolist.create<CR>
"nmap <silent> <leader>tl :CocList todolist<CR>

"autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
