require('snacks').setup({
  picker = { enabled = true },
  explorer = { enabled = true },
  bigfile = { enabled = false },
  dashboard = { enabled = false },
  lazygit = { enabled = true },
  notifier = { enabled = true },
  statuscolumn = { enabled = false },
  words = { enabled = false },
  indent = { enabled = false },
  input = { enabled = false },
  scroll = { enabled = false },
  zen = { enabled = false },
})

-- File finder
vim.keymap.set('n', '<leader><leader>', function() Snacks.picker.files() end, { desc = 'Find files' })
vim.keymap.set('n', '<leader>ff', function() Snacks.picker.files() end, { desc = 'Find files' })
-- Grep
vim.keymap.set('n', '<leader>/', function() Snacks.picker.grep() end, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fg', function() Snacks.picker.grep({ hidden = true }) end, { desc = 'Live grep (hidden)' })
-- Other pickers
vim.keymap.set('n', '<leader>fb', function() Snacks.picker.buffers() end, { desc = 'Buffers' })
vim.keymap.set('n', '<leader>fh', function() Snacks.picker.help() end, { desc = 'Help' })
vim.keymap.set('n', '<leader>fr', function() Snacks.picker.recent() end, { desc = 'Recent files' })
-- Explorer
vim.keymap.set('n', '<leader>e', function() Snacks.explorer() end, { desc = 'File explorer' })

-- Notifier
vim.keymap.set('n', '<leader>un', function() Snacks.notifier.show_history() end, { desc = 'Notification history' })

-- Git
vim.keymap.set('n', '<leader>gg', function() Snacks.lazygit() end, { desc = 'Lazygit' })

