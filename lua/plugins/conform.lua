require('conform').setup({
  formatters_by_ft = {
    lua = { 'stylua' },
    python = { 'ruff_format' },
    sh = { 'shfmt' },
    bash = { 'shfmt' },
  },
})

vim.keymap.set('n', '<leader>cff', function()
  require('conform').format({ async = true })
end, { desc = 'Format file' })

vim.keymap.set('v', '<leader>cfv', function()
  require('conform').format({ async = true, range = {
    start = vim.api.nvim_buf_get_mark(0, '<'),
    ['end'] = vim.api.nvim_buf_get_mark(0, '>'),
  }})
end, { desc = 'Format selection' })
