# sucklessvim cheatsheet

## Leader key: `<Space>`

---

## Buffers

| Key | Action |
|-----|--------|
| `<S-h>` / `<S-l>` | Previous / next buffer |
| `<leader>bb` | Last active buffer |
| `<leader>bd` | Delete buffer |

---

## Search

`n`/`N`/`*`/`#` all center the screen on the result (zz).

---

## Quickfix

| Key | Action |
|-----|--------|
| `<M-j>` / `<M-k>` | Next / prev quickfix item |
| `<leader>qo` | Open quickfix |
| `<leader>qc` | Close quickfix |

---

## Find (mini.pick)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `<leader>fh` | Help |

Inside picker: `<Tab>` toggles preview.

---

## File explorer (mini.files)

| Key | Action |
|-----|--------|
| `<leader>e` | Open file explorer |

---

## UI

| Key | Action |
|-----|--------|
| `<leader>ut` | Toggle light/dark theme |
| `<leader>un` | Notification history |

---

## Git (mini.git + mini.diff)

| Key | Action |
|-----|--------|
| `]h` / `[h` | Next / prev hunk |
| `<leader>gg` | Git status |
| `<leader>gl` | Git log |
| `<leader>gd` | Git diff |
| `<leader>gb` | Show git info at cursor (vsplit) |
| `<leader>go` | Toggle diff overlay |

---

## LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Go to references |
| `gi` | Go to implementation |
| `K` | Hover docs |
| `<leader>cr` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>cd` | View diagnostics (float) |
| `<leader>cq` | Diagnostics to quickfix |
| `]d` / `[d` | Next / prev diagnostic |

Active servers: `lua_ls`, `bashls`, `pyright`, `yamlls`, `jsonls`

---

## Code (conform.nvim)

| Key | Action |
|-----|--------|
| `<leader>cf` | Format file (normal) or selection (visual) |

Formatters: `stylua` (lua), `ruff_format` (python), `shfmt` (bash/sh), `prettier` (json)

---

## Treesitter text objects

### Select — works with any operator (v, d, c, y, =, >...)

| Key | Action |
|-----|--------|
| `af` / `if` | Outer / inner function (linewise) |
| `ac` / `ic` | Outer / inner class (linewise) |
| `aa` / `ia` | Outer / inner parameter |

Examples:
- `vaf` — select whole function
- `cif` — change function body
- `daf` — delete whole function
- `=af` — reindent function
- `daa` — delete parameter including comma
- `ci"` — change content inside quotes (builtin, not treesitter)

### Move

| Key | Action |
|-----|--------|
| `]f` / `[f` | Next / prev function start |
| `]]` / `[[` | Next / prev class start |
| `]a` / `[a` | Next / prev parameter |
| `;` / `,` | Repeat last move (works for f/t too) |

---

## mini.ai — extended text objects

Extends built-in `a`/`i` with next/last modifiers:

| Key | Action |
|-----|--------|
| `vina"` | Select inside **next** string |
| `vila"` | Select inside **last** string |
| `vina)` | Select inside next parentheses |

Works with any object: `"`, `'`, `` ` ``, `(`, `[`, `{`, `<`

---

## mini.surround

| Key | Action |
|-----|--------|
| `sa` + motion + char | Add surround |
| `sd` + char | Delete surround |
| `sr` + old + new | Replace surround |

Examples:
- `saiw"` — surround word with `"` |
- `sd"` — delete surrounding `"` |
- `sr"'` — replace `"` with `'` |

---

## Markdown checkboxes

| Key | Action |
|-----|--------|
| `<leader>t` | Toggle checkbox `[ ]` / `[x]` |

---

## Useful one-offs

| Command | Action |
|---------|--------|
| `:InspectTree` | Show treesitter syntax tree for current buffer |
| `:Mason` | Open Mason UI to install/update servers |
| `:'<,'>!jq .` | Format selected JSON through jq |
| `:MiniNotify.show_history()` | Already mapped to `<leader>un` |
