local checkbox = {}

function checkbox.toggle_checkbox()
  local line = vim.api.nvim_get_current_line()

  if line:match("%[ %]") then
    vim.cmd([[s/\[ \]/[x]/]])
  elseif line:match("%[x%]") or line:match("%[X%]") then
    vim.cmd([[s/\[x\]/[ ]/]])
  end

  vim.cmd("noh")
end

vim.keymap.set("n", "<leader>t", checkbox.toggle_checkbox, {
  silent = true,
  desc = "Toggle markdown checkbox",
})
