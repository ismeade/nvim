return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = function ()
        require'nvim-treesitter.configs'.setup {
            -- A list of parser names, or "all" (the five listed parsers should always be installed)
            ensure_installed = {
                "c",
                "lua",
                "go",
                "java",
                "html",
                "vim",
                "vimdoc",
                "query",
                "json",
                "yaml" },

            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        }
    end
}
