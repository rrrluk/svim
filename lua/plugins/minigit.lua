require('mini.git').setup()

-- Navigation
vim.keymap.set('n', ']h', function() MiniDiff.goto_hunk('next') end, { desc = 'Next hunk' })
vim.keymap.set('n', '[h', function() MiniDiff.goto_hunk('prev') end, { desc = 'Prev hunk' })
-- Git actions
vim.keymap.set('n', '<leader>gg', function() vim.cmd('Git status') end, { desc = 'Git status' })
vim.keymap.set('n', '<leader>gb', function() vim.cmd('Git blame') end,     { desc = 'Git blame' })
vim.keymap.set('n', '<leader>gl', function() vim.cmd('Git log') end,       { desc = 'Git log' })
vim.keymap.set('n', '<leader>gd', function() vim.cmd('Git diff') end,      { desc = 'Git diff' })
vim.keymap.set('n', '<leader>gc', function() MiniGit.show_at_cursor() end, { desc = 'Show at cursor' })
vim.keymap.set('n', '<leader>go', function() MiniDiff.toggle_overlay() end,{ desc = 'Diff overlay' })
