vim.g.mapleader = " "

local keymap = vim.keymap

-- ====================
-- insert
-- ====================

-- ====================
-- visual
-- ====================

-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ====================
-- normal
-- ====================

-- config
keymap.set("n", "<leader>ee", ":e $MYVIMRC<CR>")
keymap.set("n", "<leader>eo", ":e ~/.config/nvim/lua/core/options.lua<CR>")
keymap.set("n", "<leader>ek", ":e ~/.config/nvim/lua/core/keymaps.lua<CR>")
keymap.set("n", "<leader>ep", ":e ~/.config/nvim/lua/core/plugins.lua<CR>")
keymap.set("n", "<leader>er", ":source $MYVIMRC<CR>")

keymap.set("n", "<leader>pi", ":PackerSync<CR>")

-- window
keymap.set("n", "<leader>wv", "<C-w>v")
keymap.set("n", "<leader>wh", "<C-w>s")
keymap.set("n", "<leader>ww", "<C-w>w")
keymap.set("n", "<leader>wq", "<C-w>q")
keymap.set("n", "<leader>wl", "<C-w>l")
keymap.set("n", "<leader>wh", "<C-w>h")

-- tab
keymap.set("n", "<leader><tab>n", ":tabe<CR>")
keymap.set("n", "<leader><tab><tab>", ":tabnext<CR>")
keymap.set("n", "<leader><tab>d", ":tabclose<CR>")

-- search
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- nvim-tree
keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")

-- quit
keymap.set("n", "<leader>qq", ":q<CR>")
keymap.set("n", "<leader>qa", ":qa<CR>")
keymap.set("n", "<leader>qw", ":wq<CR>")
keymap.set("n", "<leader>Q", ":q!<CR>")
keymap.set("n", "<leader>Qw", ":qw!<CR>")

-- save
keymap.set("n", "<leader>fs", ":w<CR>")

-- nop
keymap.set("n", "<up>", "<nop>")
keymap.set("n", "<down>", "<nop>")
keymap.set("n", "<left>", "<nop>")
keymap.set("n", "<right>", "<nop>")

