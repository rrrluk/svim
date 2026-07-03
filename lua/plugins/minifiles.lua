require('mini.files').setup({
  windows = {
    preview = true,
    width_focus = 50,
    width_preview = 50,
  },
  options = {
    use_as_default_explorer = true,
  },
})

vim.keymap.set('n', '<leader>e', function() MiniFiles.open() end, { desc = 'File explorer' })
