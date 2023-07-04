vim.g.mapleader = " "

keymaps = vim.keymap

-- ====================
-- insert
-- ====================

-- ====================
-- visual
-- ====================

-- 单行或多行移动
keymaps.set("v", "J", ":m '>+1<CR>gv=gv")
keymaps.set("v", "K", ":m '<-2<CR>gv=gv")

-- ====================
-- normal
-- ====================

-- config
keymaps.set("n", "<leader>ee", ":e $MYVIMRC<CR>")
keymaps.set("n", "<leader>eo", ":e ~/.config/nvim/lua/core/options.lua<CR>")
keymaps.set("n", "<leader>ek", ":e ~/.config/nvim/lua/core/keymaps.lua<CR>")
keymaps.set("n", "<leader>ep", ":e ~/.config/nvim/lua/core/plugins.lua<CR>")
keymaps.set("n", "<leader>er", ":source $MYVIMRC<CR>")

-- window
keymaps.set("n", "<leader>wv", "<C-w>v")
keymaps.set("n", "<leader>wh", "<C-w>s")
keymaps.set("n", "<leader>ww", "<C-w>w")
keymaps.set("n", "<leader>wq", "<C-w>q")
keymaps.set("n", "<leader>wl", "<C-w>l")
keymaps.set("n", "<leader>wh", "<C-w>h")

-- buffer
keymaps.set("n", "<leader>b[", ":bprevious<CR>")
keymaps.set("n", "<leader>b]", ":bnext<CR>")
keymaps.set("n", "<leader>bd", ":bdelete<CR>")

-- tab
keymaps.set("n", "<leader><tab>n", ":tabe<CR>")
keymaps.set("n", "<leader><tab><tab>", ":tabnext<CR>")
keymaps.set("n", "<leader><tab>d", ":tabclose<CR>")

-- search
keymaps.set("n", "<leader>nh", ":nohl<CR>")

-- quit
keymaps.set("n", "<leader>qq", ":q<CR>")
keymaps.set("n", "<leader>qa", ":qa<CR>")
keymaps.set("n", "<leader>qw", ":wq<CR>")
keymaps.set("n", "<leader>Q", ":q!<CR>")
keymaps.set("n", "<leader>Qw", ":qw!<CR>")

-- save
keymaps.set("n", "<leader>fs", ":w<CR>")

-- nop
keymaps.set("n", "<up>", "<nop>")
keymaps.set("n", "<down>", "<nop>")
keymaps.set("n", "<left>", "<nop>")
keymaps.set("n", "<right>", "<nop>")

