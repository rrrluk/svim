require('conform').setup({
  formatters_by_ft = {
    lua = { 'stylua' },
    python = { 'ruff_format' },
    sh = { 'shfmt' },
    bash = { 'shfmt' },
  },
})

vim.keymap.set('n', '<leader>cf', function()
  require('conform').format({ async = true })
end, { desc = 'Format file' })
