require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "json", "yaml" },

    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
}
