" ==============================
" plug
" ==============================
call plug#begin('~/.config/nvim/plugged')

"UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"theme
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'

Plug 'mhinz/vim-startify'

"DIR
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'ryanoasis/vim-devicons' "图标，需要nerdfont
Plug 'airblade/vim-rooter'

"EDIT
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/vim-cursorword'
Plug 'tpope/vim-surround'
Plug 'lfv89/vim-interestingwords'
"Plug 'Yggdroot/indentLine' "缩进对齐线
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
Plug 'airblade/vim-gitgutter'
Plug 'gcmt/wildfire.vim'
"Plug 'preservim/tagbar'
"Plug 'liuchengxu/vista.vim'

"GO
Plug 'fatih/vim-go'
"markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'jiangmiao/auto-pairs'
Plug 'voldikss/vim-floaterm'

call plug#end()

