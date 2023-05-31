" ==============================
" fzf
" ==============================
nmap <silent> <LEADER>sf :Files<CR>
nmap <silent> <LEADER>sg :GFiles<CR>
nmap <silent> <LEADER>sb :Buffers<CR>
nmap <silent> <LEADER>sr :History<CR>
nmap <silent> <LEADER>s: :History:<CR>
nmap <silent> <LEADER>s/ :History/<CR>
nmap <silent> <LEADER>sm :Maps<CR>
nmap <silent> <LEADER>ss :BLines<CR>
nmap <silent> <LEADER>sa :Lines<CR>

" 让输入上方，搜索列表在下方
let $FZF_DEFAULT_OPTS = '--layout=reverse'

"let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" 打开 fzf 的方式选择 floating window
"let g:fzf_layout = { 'window': 'call OpenFloatingWin()' }

"function! OpenFloatingWin()
  "let height = &lines - 3
  "let width = float2nr(&columns - (&columns * 2 / 10))
  "let col = float2nr((&columns - width) / 2)

  "" 设置浮动窗口打开的位置，大小等。
  "" 这里的大小配置可能不是那么的 flexible 有继续改进的空间
  "let opts = {
        "\ 'relative': 'editor',
        "\ 'row': height * 0.3,
        "\ 'col': col + 30,
        "\ 'width': width * 2 / 3,
        "\ 'height': height / 2
        "\ }

  "let buf = nvim_create_buf(v:false, v:true)
  "let win = nvim_open_win(buf, v:true, opts)

  "" 设置浮动窗口高亮
  "call setwinvar(win, '&winhl', 'Normal:Pmenu')

  "setlocal
        "\ buftype=nofile
        "\ nobuflisted
        "\ bufhidden=hide
        "\ nonumber
        "\ norelativenumber
        "\ signcolumn=no
"endfunction
