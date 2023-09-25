return {
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}
