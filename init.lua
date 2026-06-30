--  NOTE: Must h ppen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- vim pack
vim.pack.add({
  -- { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = 'https://github.com/nvim-mini/mini.nvim' },
  { src = 'https://github.com/stefanvanburen/usgc-nvim' },
  { src = 'https://github.com/EdenEast/nightfox.nvim' },
  { src = 'https://github.com/ellisonleao/gruvbox.nvim' },
  { src = 'https://github.com/folke/which-key.nvim' },
})

-- Colorscheme
-- vim.cmd("colorscheme retrobox")
-- Setting variables for our lightdark toggle script
vim.g.dark_theme = "gruvbox" -- variants: highk(light), reticle, polyimide, epitaxy, metalgate
-- vim.g.dark_theme = "usgc-polyimide" -- variants: highk(light), reticle, polyimide, epitaxy, metalgate
vim.g.light_theme = "dayfox"

-- Keymap for light/dark bg uses this, so has to come before keymaps
require("plugins.lightdark")


require("config.keymaps")
require("config.options")

require('mini.statusline').setup()
require('mini.basics').setup()
require('mini.basics').setup()
require('mini.icons').setup()
require('mini.git').setup()
require('mini.diff').setup()
require('mini.surround').setup()
require('plugins.minipick')
require("plugins.minifiles")
require("plugins.whichkey")


