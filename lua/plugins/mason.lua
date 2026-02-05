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
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "jsonls"
            },
            automatic_installation = true,
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities,
                    on_attach = on_attach,
                })
            end,
        })
        keymaps.set('n', '<leader>lm', ':Mason<CR>')
        keymaps.set('n', '<leader>lu', ':MasonUpdate<CR>')
    end

}
