" ==============================
" nerdtree
" ==============================
nmap <silent> <LEADER>tt :NERDTreeToggle<CR>
let g:NERDTreeMapActivateNode = '<tab>'

" 只有一个子目录的目录合并成一行 0:关闭
let g:NERDTreeCascadeSingleChildDir = 0
" 只有一个子目录的目录自动打开 0:关闭
let g:NERDTreeCascadeOpenSingleChildDir = 0

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

let NERDTreeWinSize=35

" 没有指定文件时，自动打开，启动页会无效
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
"
"autocmd VimEnter * if argc() == 0 | NERDTree | endif
"autocmd VimEnter * if argc() == 0 | :NERDTreeToggle | endif

" 打开目录时，自动打开，启动页会无效
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
