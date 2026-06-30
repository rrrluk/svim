local wk = require('which-key')
wk.setup()
wk.add({
  { "<leader>u", group = "UI" },
  { "<leader>b", group = "Buffers" },
  { "<leader>q", group = "Quickfix" },
  { "<leader>c", group = "Code" },
})
