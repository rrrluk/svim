-- Keybinds

vim.keymap.set('n', '<leader>r', function()
vim.cmd('update')
vim.cmd('source')
vim.cmd('restart')
end
)

vim.keymap.set('n', '<S-h>', ':bprev<CR>', { desc = 'Select previous buffer' })
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { desc = 'Select next buffer' })
vim.keymap.set('n', '<leader>bb', ':b#<CR>', { desc = 'Select last active buffer' })
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete buffer' })

-- See hoiab searchi ajal highlighted tulemust ekraani keskel
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "*", "*zz")
vim.keymap.set("n", "#", "#zz")
vim.keymap.set("n", "g*", "g*zz")
vim.keymap.set("n", "g#", "g#zz")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- See on see, et kui sa replaced midagi, siis paste register ei muutu
vim.keymap.set("x", "p", [["_dP]])

-- quickfix
vim.keymap.set('n', '<M-j>', ':cnext<CR>', { desc = 'Next quickfix' })
vim.keymap.set('n', '<M-k>', ':cprev<CR>', { desc = 'Previous quickfix' })
vim.keymap.set('n', '<leader>qc', ':cclose<CR>', { desc = 'Close quickfix' })
vim.keymap.set('n', '<leader>qo', ':copen<CR>', { desc = 'Open quickfix' })



