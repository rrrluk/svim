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
