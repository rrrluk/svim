-- TREESITTER TEXTOBJECTS - REFACTORING CHEATSHEET
--
-- SELECT (visual or operator-pending)
--   vaf / daf / caf   outer function (linewise)
--   vif / dif / cif   inner function body
--   vac / dac         outer class
--   vic / dic         inner class
--   vaa / daa         outer parameter (inc. comma)
--   via / dia         inner parameter
--
-- MOVE
--   ]] / [[           next/prev class start
--   ]f / [f           next/prev function start
--   ]a / [a           next/prev parameter
--   ; / ,             repeat last move
--
local textobjects = require('nvim-treesitter-textobjects')
local select = require('nvim-treesitter-textobjects.select')
local move = require('nvim-treesitter-textobjects.move')
local repeat_move = require('nvim-treesitter-textobjects.repeatable_move')

textobjects.setup({
  select = {
    lookahead = true,
    selection_modes = {
      ['@function.outer'] = 'V',
      ['@function.inner'] = 'V',
      ['@class.outer'] = 'V',
    }
  },
  move = { set_jumps = true },
})

vim.keymap.set({ 'x', 'o' }, 'af', function() select.select_textobject('@function.outer', 'textobjects') end, { desc = 'outer function' })
vim.keymap.set({ 'x', 'o' }, 'if', function() select.select_textobject('@function.inner', 'textobjects') end, { desc = 'inner function' })
vim.keymap.set({ 'x', 'o' }, 'ac', function() select.select_textobject('@class.outer', 'textobjects') end, { desc = 'outer class' })
vim.keymap.set({ 'x', 'o' }, 'ic', function() select.select_textobject('@class.inner', 'textobjects') end, { desc = 'inner class' })
vim.keymap.set({ 'x', 'o' }, 'aa', function() select.select_textobject('@parameter.outer', 'textobjects') end, { desc = 'outer parameter' })
vim.keymap.set({ 'x', 'o' }, 'ia', function() select.select_textobject('@parameter.inner', 'textobjects') end, { desc = 'inner parameter' })

-- move
vim.keymap.set({ 'n', 'x', 'o' }, ']f', function() move.goto_next_start('@function.outer', 'textobjects') end, { desc = 'Next function' })
vim.keymap.set({ 'n', 'x', 'o' }, '[f', function() move.goto_previous_start('@function.outer', 'textobjects') end, { desc = 'Prev function' })
vim.keymap.set({ 'n', 'x', 'o' }, ']]', function() move.goto_next_start('@class.outer', 'textobjects') end, { desc = 'Next class' })
vim.keymap.set({ 'n', 'x', 'o' }, '[[', function() move.goto_previous_start('@class.outer', 'textobjects') end, { desc = 'Prev class' })
vim.keymap.set({ 'n', 'x', 'o' }, ']a', function() move.goto_next_start('@parameter.inner', 'textobjects') end, { desc = 'Next parameter' })
vim.keymap.set({ 'n', 'x', 'o' }, '[a', function() move.goto_previous_start('@parameter.inner', 'textobjects') end, { desc = 'Prev parameter' })

-- for repeatable move
vim.keymap.set({ 'n', 'x', 'o' }, 'f', repeat_move.builtin_f_expr, { expr = true })
vim.keymap.set({ 'n', 'x', 'o' }, 'F', repeat_move.builtin_F_expr, { expr = true })
vim.keymap.set({ 'n', 'x', 'o' }, 't', repeat_move.builtin_t_expr, { expr = true })
vim.keymap.set({ 'n', 'x', 'o' }, 'T', repeat_move.builtin_T_expr, { expr = true })
vim.keymap.set({ 'n', 'x', 'o' }, ';', repeat_move.repeat_last_move_next)
vim.keymap.set({ 'n', 'x', 'o' }, ',', repeat_move.repeat_last_move_previous)
