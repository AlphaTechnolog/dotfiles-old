require'FTerm'.setup {
  border = 'double'
}

local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

map('n', '<c-m-t>', ':lua require("FTerm").toggle()<cr>', options)
