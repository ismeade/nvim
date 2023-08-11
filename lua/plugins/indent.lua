return {
    {
        "shellRaining/hlchunk.nvim",
        event = { "UIEnter" },
        config = function()
            require("hlchunk").setup({
                chunk = {
                    enable = true,
                    use_treesitter = true,
                    style = "#d79921",
                },
                indent = {
                    chars = { "│", "¦", "┆", "┊", },
                    use_treesitter = false,
                },
                blank = {
                    enable = true,
                },
                line_num = {
                    enable = true,
                    use_treesitter = true,
                    style = "#d79921",
                },

            })
        end
    },
}
