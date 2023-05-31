" ==============================
" coc
" ==============================
let g:coc_global_extensions = [
 \ 'coc-vimlsp',
 \ 'coc-java',
 \ 'coc-go',
 \ 'coc-rls',
 \ 'coc-rust-analyzer',
 \ 'coc-sql',
 \ 'coc-protobuf',
 \ 'coc-html',
 \ 'coc-htmlhint',
 \ 'coc-vetur',
 \ 'coc-eslint',
 \ 'coc-json',
 \ 'coc-yaml',
 \ 'coc-pairs',
 \ 'coc-prettier',
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

"inoremap <silent><expr> <c-i> coc#refresh()

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
nmap <silent> <leader>ca <Plug>(coc-codeaction) 
nmap <silent> <M-.> <Plug>(coc-codeaction)
nmap <silent> <leader>cl <Plug>(coc-codeaction)
"nmap <silent> <leader>jl <Plug>(coc-codelens-action)
nmap <silent> <leader>ck <Plug>(coc-fix-current)
"nmap <silent> <M-CR> <Plug>(coc-fix-current)
nmap <silent> <leader>jt <Plug>(coc-template-top)
"nmap <c-]> <Plug>(coc-definition)
"nmap <c-[> <c-o>

"coc-translator
" popup
nmap <Leader>fy <Plug>(coc-translator-p)
vmap <Leader>fy <Plug>(coc-translator-pv)
"coc-prettier
nmap <leader>ff  :CocCommand prettier.formatFile<CR>


let g:snips_author = 'Liyang'

"autocmd BufNewFile .gitignore CocCommand template.templateTop
"autocmd BufNewFile .java CocCommand template.templateTop
"autocmd BufNewFile .go CocCommand template.templateTop
"autocmd BufNewFile .html CocCommand template.templateTop

" todolist
"nmap <silent> <leader>tc :CocCommand todolist.create<CR>
"nmap <silent> <leader>tl :CocList todolist<CR>

"autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
" ==============================
" vim-go
" ==============================
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
"let g:go_fmt_command = "goimports"
"let g:go_autodetect_gopath = 1
"let g:go_list_type = "quickfix"

"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_function_calls = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_generate_tags = 1

"autocmd FileType go nmap <leader>gb  <Plug>(go-build)
"autocmd FileType go nmap <leader>gl  <Plug>(go-lint)
"autocmd FileType go nmap <leader>gr  <Plug>(go-run)
"autocmd FileType go nmap <leader>gt  <Plug>(go-test)

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>ga :cclose<CR>

" ==============================
" coc-go
" ==============================
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
"autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.formatDocument')
nmap <leader>gt  :CocCommand go.tags.add.prompt<CR>
