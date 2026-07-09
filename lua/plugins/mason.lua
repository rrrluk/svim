require('mason').setup({
  ui = { border = 'rounded'}
})

-- auto install servers

vim.schedule(function()
  local registry = require('mason-registry')
  registry.refresh(function()
    -- auto install servers
    local servers = {
      -- LSP serers
      'lua-language-server',
      'bash-language-server',
      'pyright',
      'yaml-language-server',
      'json-lsp',
      -- Formatters
      'stylua', 
      'ruff',
      'prettier',
      'shfmt',
    }
    for _, server in ipairs(servers) do
      local ok, pkg = pcall(registry.get_package, server)
      if ok and not pkg:is_installed() then
        pkg:install()
      end
    end
  end)
end)
