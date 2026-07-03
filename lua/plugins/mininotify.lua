require('mini.notify').setup({
  window = {
    config = {
      border = 'rounded',   -- 'single', 'double', 'rounded', 'solid', 'shadow'
    },
    max_width_share = 0.382, -- max width as share of editor width
    winblend = 25,           -- transparency 0-100
  },
    -- Notifications about LSP progress
  lsp_progress = {
    -- Whether to enable showing
    enable = true,

    -- Notification level
    level = 'INFO',

    -- Duration (in ms) of how long last message should be shown
    duration_last = 1000,
  },
})

vim.keymap.set('n', '<leader>um', MiniNotify.show_history, { desc = 'View message history' })
