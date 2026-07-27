require('diffview').setup()

vim.keymap.set('n', '<leader>gv', '<cmd>DiffviewOpen<cr>',            { desc = 'Diffview open' })
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory %<cr>',   { desc = 'File history' })
vim.keymap.set('n', '<leader>gH', '<cmd>DiffviewFileHistory<cr>',     { desc = 'Repo history' })
vim.keymap.set('n', '<leader>gx', '<cmd>DiffviewClose<cr>',           { desc = 'Diffview close' })
