local catppuccin = require('catppuccin')

catppuccin.setup({
  term_colors = true,
  styles = {
    comments = "italic",
    functions = "NONE",
    keywords = "italic",
    strings = "italic",
    variables = "NONE",
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = "italic",
        hints = "italic",
        warnings = "italic",
        information = "italic",
      },
      underlines = {
        errors = "underline",
        hints = "underline",
        warnings = "underline",
        information = "underline",
      },
    },
  },
  lsp_trouble = true,
  lsp_saga = true,
  gitgutter = true,
  gitsigns = true,
  telescope = true,
  nvimtree = {
    enabled = true,
    show_root = true,
  },
  whick_key = true,
  indent_blankline = {
    enabled = true,
    colored_indent_levels = true,
  },
  dashboard = false,
  neogit = true,
  vim_sneak = true,
  fern = false,
  barbar = false,
  bufferline = true,
  markdown = true,
  lightspeed = true,
  ts_rainbow = true,
  hop = true,
  cmp = true,
})

catppuccin.load()
