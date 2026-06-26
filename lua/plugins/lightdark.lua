local dark_theme = "retrobox"
local light_theme = "quiet"
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
