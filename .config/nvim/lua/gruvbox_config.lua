vim.g.gruvbox_italic = false
vim.g.gruvbox_contrast_dark = 'hard'

vim.cmd [[
if has('termguicolors')
  set termguicolors
endif

set background=dark
syntax on
colorscheme gruvbox
]]
