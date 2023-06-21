" ==============================
" plug
" ==============================
call plug#begin('~/.config/nvim/plugged')

" ==============================
" UI
" ==============================
"Vim 状态栏插件，包括显示行号，列号，文件类型，文件名，以及 Git 状态
Plug 'vim-airline/vim-airline'
"vim-airline 的主题插件
Plug 'vim-airline/vim-airline-themes'
"起始页
Plug 'mhinz/vim-startify'

" ==============================
" 主题
" ==============================
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'dracula/vim'


" ==============================
" 导航栏
" ==============================
"用来提供一个导航目录的侧边栏
Plug 'scrooloose/nerdtree'
"可以在文件目录中看到 Git 版本信息
Plug 'Xuyuanp/nerdtree-git-plugin'
"在 NERDTree 中显示文件类型图标 需要nerdfont
Plug 'ryanoasis/vim-devicons' 
Plug 'airblade/vim-rooter'

" ==============================
" 编辑
" ==============================
"自动补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"代码块自定义风格片段
Plug 'honza/vim-snippets'
"快速注释
Plug 'preservim/nerdcommenter'
Plug 'itchyny/vim-cursorword'
Plug 'tpope/vim-surround'
Plug 'lfv89/vim-interestingwords'
"代码缩进提示
"Plug 'Yggdroot/indentLine'
"git ui
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
"可以在文档中显示 Git 信息
Plug 'airblade/vim-gitgutter'
Plug 'gcmt/wildfire.vim'
"查看当前代码文件中的变量和函数列表的插件，可以切换和跳转到代码中对应的变量和函数的位置
Plug 'preservim/tagbar'
"Plug 'liuchengxu/vista.vim'
"Plug 'ybian/smartim' "自动切换输入法
"搜索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"自动补全括号的插件，包括小括号，中括号，以及花括号
"Plug 'jiangmiao/auto-pairs'
"悬浮框命令行
Plug 'voldikss/vim-floaterm'

" ==============================
" 开发
" ==============================
"GO
"Plug 'fatih/vim-go'
"markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

