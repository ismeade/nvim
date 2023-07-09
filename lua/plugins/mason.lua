return {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
        { "williamboman/mason.nvim", build = ":MasonUpdate", },
    },
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "gopls" },
            automatic_installation = true,
        })
        keymaps.set('n', '<leader>lm', ':Mason<CR>')
        keymaps.set('n', '<leader>lu', ':MasonUpdate<CR>')
    end

}
