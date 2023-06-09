" ==============================
" coc
" ==============================
let g:coc_global_extensions = [
 \ 'coc-vimlsp',
 \ 'coc-java',
 \ 'coc-go',
 \ 'coc-lua',
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

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-/> coc#refresh()

"if exists('*complete_info')
  "inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"else
  "inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"endif

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
