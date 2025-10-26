vim.g.mapleader = ";"

local keymap = vim.keymap

vim.api.nvim_set_keymap('t', '<Leader><ESC>', '<C-\\><C-n>', { noremap = true })

vim.api.nvim_set_keymap('n', '<Leader>o', 'za', { noremap = true })

