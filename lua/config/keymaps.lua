-- Keybinds

vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float)

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
vim.keymap.set("n", "n", "nzz", opts)
vim.keymap.set("n", "N", "Nzz", opts)
vim.keymap.set("n", "*", "*zz", opts)
vim.keymap.set("n", "#", "#zz", opts)
vim.keymap.set("n", "g*", "g*zz", opts)
vim.keymap.set("n", "g#", "g#zz", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- See on see, et kui sa replaced midagi, siis paste register ei muutu
vim.keymap.set("x", "p", [["_dP]])

-- quickfix
vim.keymap.set('n', '<M-j>', ':cnext<CR>', { desc = 'Next quickfix' })
vim.keymap.set('n', '<M-k>', ':cprev<CR>', { desc = 'Previous quickfix' })
vim.keymap.set('n', '<leader>qc', ':cclose<CR>', { desc = 'Close quickfix' })
vim.keymap.set('n', '<leader>qo', ':copen<CR>', { desc = 'Open quickfix' })

-- background toggle
-- vim.keymap.set("n", "<leader>ub", ':exec &bg=="light"? "set bg=dark" : "set bg=light"<CR>', opts),
vim.keymap.set("n", "<leader>ub", function() _G.toggle_colorscheme() end, { desc = 'Toggle light/dark theme' })

-- mini files
vim.keymap.set('n', '<leader>e', function() MiniFiles.open() end, { desc = 'File explorer' })

-- mini pick
vim.keymap.set('n', '<leader><leader>', function() MiniPick.builtin.files() end,    { desc = 'Find files' })
vim.keymap.set('n', '<leader>ff', function() MiniPick.builtin.files() end,    { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', function() MiniPick.builtin.grep_live() end, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', function() MiniPick.builtin.buffers() end,   { desc = 'Buffers' })
vim.keymap.set('n', '<leader>fh', function() MiniPick.builtin.help() end,      { desc = 'Help' })
