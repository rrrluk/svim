vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.git' },
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      workspace = {
        checkThirdParty = false,
        library = { vim.env.VIMRUNTIME },
      },
      diagnostics = { globals = { 'vim' } },
      telemetry = { enable = false },
    },
  },
})
vim.lsp.enable('lua_ls')

-- bash
vim.lsp.config('bashls', {
  cmd = { 'bash-language-server', 'start' },
  filetypes = { 'bash', 'sh' },
  root_markers = { '.git' },
})
vim.lsp.enable('bashls')
-- python
vim.lsp.config('pyright', {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', '.git' },
  settings = {
    python = {
      analysis = { typeCheckingMode = 'basic' },
    },
  },
})
vim.lsp.enable('pyright')
-- yaml
vim.lsp.config('yamlls', {
  cmd = { 'yaml-language-server', '--stdio' },
  filetypes = { 'yaml', 'yml' },
  root_markers = { '.git' },
})
vim.lsp.enable('yamlls')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local buf = args.buf
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition,         { buffer = buf, desc = 'Go to definition' })
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration,        { buffer = buf, desc = 'Go to declaration' })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references,         { buffer = buf, desc = 'Go to references' })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation,     { buffer = buf, desc = 'Go to implementation' })
    vim.keymap.set('n', 'K',  vim.lsp.buf.hover,              { buffer = buf, desc = 'Hover docs' })
    vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { buffer = buf, desc = 'View diagnostics' })
    vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename,     { buffer = buf, desc = 'Rename symbol' })
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action,{ buffer = buf, desc = 'Code action' })
    vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1 }) end,  { buffer = buf, desc = 'Next diagnostic' })
    vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1 }) end, { buffer = buf, desc = 'Prev diagnostic' })
    vim.keymap.set('n', '<leader>cq', vim.diagnostic.setqflist, { buffer = buf, desc = 'Diagnostics to quickfix' })
  end,
})
