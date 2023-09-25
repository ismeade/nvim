return {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    config = function ()
        vim.fn["mkdp#util#install"]()

        vim.g.mkdp_page_title = "${name}"

    end
}
