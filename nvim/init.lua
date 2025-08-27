-- export default - Vim Confiour
vim.g.mapleader = " "
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.cmd("set nu")
vim.cmd("set rnu")
vim.cmd("set nowrap")
vim.opt.foldmethod = 'expr'
vim.opt.foldlevel = 99

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float, {})
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {})
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {})

-- Lazy Plugins Manager
require("config.lazy")
require("config.lsp-hover")

vim.g.completion_items_priority = {
  Field = 11,
  Method = 10,
  Property = 9,
  Function = 7,
  Variables = 6,
  Struct = 6,
  Interfaces = 6,
  Constant = 6,
  Class = 6,
  Keyword = 5,
  Treesitter = 4,
  File = 2,
  Buffers = 0,
}

-- Apply Color Scheme
vim.cmd.colorscheme "catppuccin"

-- Auto Save
vim.cmd("Autosave on")

-- Find File
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Toggle Terminal
vim.api.nvim_set_keymap(
    'n', '<leader>tf', ':ToggleTerm direction=float<CR>',
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
    'n', '<leader>th', ':ToggleTerm direction=horizontal<CR>',
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
    'n', '<leader>tv', ':ToggleTerm direction=vertical<CR>',
    { noremap = true, silent = true }
)

-- Buffer Bar
-- vim.api.nvim_set_keymap(
--     'n', '<leader>bd', ':BufferClose<CR>',
--     { noremap = true, silent = true }
-- )

-- Tab
vim.api.nvim_set_keymap(
    'n', ']t', ':tabnext<CR>',
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    'n', '[t', ':tabprevious<CR>',
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    'n', '<leader>td', ':tabclose<CR>',
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    'n', '<leader>tn', ':tabnew<CR>',
    { noremap = true, silent = true }
)
