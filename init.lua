--  NOTE: Must h ppen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' ' vim.g.maplocalleader = ' '

-- vim pack
vim.pack.add({
  -- { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = 'https://github.com/nvim-mini/mini.nvim' },
  { src = 'https://github.com/stefanvanburen/usgc-nvim' },
  { src = 'https://github.com/EdenEast/nightfox.nvim' },
  { src = 'https://github.com/ellisonleao/gruvbox.nvim' },
  { src = 'https://github.com/folke/which-key.nvim' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects' },
  { src = 'https://github.com/alexghergh/nvim-tmux-navigation'},
  { src = 'https://github.com/williamboman/mason.nvim' },
  { src = 'https://github.com/saghen/blink.cmp', version = 'v1.10.2' },
  -- optional but nice: snippets
  { src = 'https://github.com/rafamadriz/friendly-snippets' },
  { src = 'https://github.com/stevearc/conform.nvim' },
  { src = 'https://github.com/folke/snacks.nvim' },
})

-- Separate system to add built-in plugins
vim.cmd.packadd('nvim.difftool')

-- Colorscheme
-- vim.cmd("colorscheme retrobox")
-- Setting variables for our lightdark toggle script
vim.g.dark_theme = "gruvbox" 
-- vim.g.dark_theme = "usgc-polyimide" -- variants: highk(light), reticle, polyimide, epitaxy, metalgate
vim.g.light_theme = "dayfox"

-- Keymap for light/dark bg uses this, so has to come before keymaps
require("plugins.lightdark")


require("config.keymaps")
require("config.options")
require("config.autocmds")

require('mini.basics').setup()
require('mini.icons').setup()
require('mini.statusline').setup()
require('mini.ai').setup()
require('mini.diff').setup()
require('mini.surround').setup()
require('mini.tabline').setup()
require('mini.pairs').setup()
require('mini.align').setup()
require('mini.indentscope').setup()

-- require('plugins.mininotify')
-- require('plugins.minipick')
-- require("plugins.minifiles")
require('plugins.minigit')
require("plugins.whichkey")
require("plugins.treesitter-textobjects")
require("plugins.nvim-tmux-navigation")
require("plugins.mason")
require("plugins.lsp")
require("plugins.checkbox")
require("plugins.blink")
require("plugins.conform")
require("plugins.snacks")


