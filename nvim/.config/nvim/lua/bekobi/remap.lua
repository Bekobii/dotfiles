vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

local telescope_builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files)
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep)

-- LSP 
vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
