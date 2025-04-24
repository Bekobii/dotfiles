vim.cmd.colorscheme("catppuccin-mocha")
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.number = true
vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- Treesitter

local config = require('nvim-treesitter.configs')
config.setup({
  ensure_installed = {"lua", "rust"},
  sync_install = false,
  highlight = {enable=true},
  indent = {enable=true},
})


-- Cord 
require('cord').setup({
	display = {
    theme = "catppuccin",
    flavor = "dark"
	}
})

-- Lualine
require('lualine').setup()

-- Mason
require('mason').setup()

-- Telescope
-- This is your opts table
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
      }

    }
  }
}
require("telescope").load_extension("ui-select")
