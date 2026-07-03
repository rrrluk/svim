local pick = require('mini.pick')
pick.setup({
  window = {
    config = function()
      local width = math.floor(vim.o.columns * 0.7)
      local height = math.floor(vim.o.lines * 0.7)
      return {
        relative = 'editor',
        width = width,
        height = height,
        row = math.floor((vim.o.lines - height) / 2),
        col = math.floor((vim.o.columns - width) / 2),
        border = 'rounded',
      }
    end,
  },
  options = {
    use_cache = true,
  },
})

vim.keymap.set('n', '<leader><leader>', function() MiniPick.builtin.files() end,    { desc = 'Find files' })
vim.keymap.set('n', '<leader>ff', function() MiniPick.builtin.files() end,    { desc = 'Find files' })
vim.keymap.set('n', '<leader>/', function() MiniPick.builtin.grep_live() end, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fg', function() MiniPick.builtin.grep_live() end, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', function() MiniPick.builtin.buffers() end,   { desc = 'Buffers' })
vim.keymap.set('n', '<leader>fh', function() MiniPick.builtin.help() end,      { desc = 'Help' })
