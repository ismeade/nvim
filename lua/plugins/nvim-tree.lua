-- 默认不开启
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- nvim-tree
keymaps.set("n", "<leader>tt", ":NvimTreeToggle<CR>")


--[[
o 打开关闭文件夹
a 创建文件
r 重命名
x 剪切
c 拷贝
p 粘贴
d 删除
--]]
--
return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',-- optional
    },
    config = function ()
        require("nvim-tree").setup{}
    end
}
