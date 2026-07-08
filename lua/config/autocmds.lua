-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})

-- See lõpetab selle jura, et uus rida pärast kommenteeritud rida saab ka kohe kommenteeritud
vim.api.nvim_create_autocmd("FileType", {
  command = "set formatoptions-=cro",
})

-- .alloy file peaks olema nüüd hcl (terraform) filetype
vim.filetype.add({
  extension = {
    alloy = "terraform",
  },
})

-- Nerd icons for diagnostics
vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '󰅙',
      [vim.diagnostic.severity.WARN]  = '󰀦',
      -- [vim.diagnostic.severity.HINT]  = '󰌶',
      [vim.diagnostic.severity.HINT]  = '󰌵',
      [vim.diagnostic.severity.INFO]  = '󰋼',
    },
  },
})
