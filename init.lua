--  NOTE: Must h ppen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- vim pack
vim.pack.add({
  -- { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = 'https://github.com/nvim-mini/mini.nvim' },
})

require("plugins.lightdark")
require("config.keymaps")
require("config.options")

require('mini.statusline').setup()
require('mini.statusline').setup()
require('mini.statusline').setup()

-- Colorscheme
-- vim.cmd("colorscheme retrobox")


