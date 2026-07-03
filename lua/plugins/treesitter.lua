local treesitter = require('nvim-treesitter')
treesitter.setup()

-- Install these
treesitter.install({
  'lua', 'json', 'javascript', 'typescript', 'tsx', 'go', 'yaml', 'html',
  'css', 'python', 'bash', 'vim', 'dockerfile', 'gitignore', 'query',
  'vimdoc', 'c', 'java', 'rust',
}):wait(300000)

-- safe filetype autocmd from MR Jakob
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function(args)
    local buf = args.buf
    local ft = vim.bo[buf].filetype
    local lang = vim.treesitter.language.get_lang(ft)
    if not lang then return end
    pcall(vim.treesitter.start, buf, lang)
    if ft ~= 'yaml' and ft ~= 'markdown' then
      vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      vim.bo[buf].smartindent = false
      vim.bo[buf].cindent = false
    end
  end,
})
