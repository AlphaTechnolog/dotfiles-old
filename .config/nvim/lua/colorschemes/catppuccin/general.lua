local catppuccin = require('catppuccin')

catppuccin.setup({
  term_colors = true,
  styles = {
    comments = "NONE",
    functions = "NONE",
    keywords = "NONE",
    strings = "NONE",
    variables = "NONE",
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = "NONE",
        hints = "NONE",
        warnings = "NONE",
        information = "NONE",
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
