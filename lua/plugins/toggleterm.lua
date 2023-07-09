return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup()

        keymaps.set('n', '<leader>tc', ':ToggleTerm<CR>')
    end
}

