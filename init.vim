source ~/.config/nvim/config.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/theme.vim

for file in split(globpath('~/.config/nvim/modules', '*.vim'), '\n')
    exe 'source' file
endfor

