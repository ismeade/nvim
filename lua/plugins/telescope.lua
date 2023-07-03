local builtin = require('telescope.builtin')

-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了

keymaps.set('n', '<leader>sf', builtin.find_files, {})
keymaps.set('n', '<leader>sg', builtin.live_grep, {})  -- 环境里要安装ripgrep
keymaps.set('n', '<leader>sb', builtin.buffers, {})
keymaps.set('n', '<leader>sh', builtin.help_tags, {})
