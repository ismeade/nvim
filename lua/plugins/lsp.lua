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
    -- 确保安装，根据需要填写
    ensure_installed = {
        'lua_ls', 'gopls'
    },
})


local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
    capabilities = capabilities,
}

require("lspconfig").gopls.setup {}

keymaps.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymaps.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')

keymaps.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymaps.set('n', '<leader>gh', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymaps.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymaps.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymaps.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')

keymaps.set('n', '<leader>go', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymaps.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymaps.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')

keymaps.set('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
