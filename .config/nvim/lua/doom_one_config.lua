vim.cmd [[ set termguicolors ]]
require'doom-one'.setup {
  cursor_coloring = false,
  terminal_colors = false,
  italic_comments = false,
  enable_treesitter = true,
  transparent_background = false,
  plugins_integrations = {
    bufferline = true,
    telescope = true,
    nvim_tree = true,
  },
}
