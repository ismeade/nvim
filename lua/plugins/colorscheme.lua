return {
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    --     config = function()
    --         vim.cmd([[colorscheme tokyonight-storm]])
    --     end,
    -- }
}
