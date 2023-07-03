local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- vim.cmd([[
--     augroup packer_user_config
--         autocmd!
--         autocmd BufWritePost plugins.lua source <afile> | PackerSync
--     augroup end
-- ]])

return require('packer').startup(function(use)
    -- 插件管理
    use {'wbthomason/packer.nvim'}
    -- 主题
    use {'ellisonleao/gruvbox.nvim'}
    -- 状态栏
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    -- 文件树
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    -- 代码高亮
    use {'nvim-treesitter/nvim-treesitter'}
    -- lsp管理
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',  -- 这个相当于mason.nvim和lspconfig的桥梁
        'neovim/nvim-lspconfig'
    }

    -- 自动补全
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-path'} -- 文件路径
    use {'L3MON4D3/LuaSnip'} -- snippets引擎，不装这个自动补全会出问题
    use {'saadparwaiz1/cmp_luasnip'}
    use {'rafamadriz/friendly-snippets'}

    use {"windwp/nvim-autopairs"} -- 自动补全括号
    -- buffer分割线
    use {"akinsho/bufferline.nvim"}
    -- 左则git提示
    use {"lewis6991/gitsigns.nvim"}

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',  -- 文件检索
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- use {
    --     'goolord/alpha-nvim',
    --     requires = {
    --         'nvim-tree/nvim-web-devicons', -- optional
    --     },
    --     config = function ()
    --         require'alpha'.setup(require'alpha.themes.startify'.config)
    --     end
    -- }
    use {
        'akinsho/toggleterm.nvim', tag = '*'
    }
    use {'numToStr/Comment.nvim'}

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
