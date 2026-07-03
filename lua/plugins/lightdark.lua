local dark_theme = vim.g.dark_theme or "retrobox"
local light_theme = vim.g.light_theme or "quiet"

vim.o.background = "dark"
vim.cmd.colorscheme(dark_theme)
_G.toggle_colorscheme = function()
  if vim.o.background == "dark" then
    vim.o.background = "light"
    vim.cmd.colorscheme(light_theme)
  else
    vim.o.background = "dark"
    vim.cmd.colorscheme(dark_theme)
  end
end

vim.keymap.set("n", "<leader>ub", function() _G.toggle_colorscheme() end, { desc = 'Toggle light/dark theme' })
