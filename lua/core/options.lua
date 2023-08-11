local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.scrolloff = 4

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
opt.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])

-- 其他
vim.g.loaded_perl_provider = 0
