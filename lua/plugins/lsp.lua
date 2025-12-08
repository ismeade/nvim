return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        vim.lsp.config('lua_ls', {
            capabilities = capabilities,
        })

        local format_sync_grp = vim.api.nvim_create_augroup("Format", {})
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = { "*.lua" },
            callback = function()
                vim.lsp.buf.format({ timeout_ms = 200 })
            end,
            group = format_sync_grp,
        })

        vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
        vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')

        vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
        vim.keymap.set('n', '<leader>gh', '<cmd>lua vim.lsp.buf.hover()<CR>')
        vim.keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
        vim.keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
        vim.keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')

        vim.keymap.set('n', '<leader>go', '<cmd>lua vim.diagnostic.open_float()<CR>')
        vim.keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
        vim.keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')

        vim.keymap.set('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
    end
}
