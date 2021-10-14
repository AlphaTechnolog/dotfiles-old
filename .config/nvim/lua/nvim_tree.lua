require'nvim-tree'.setup {
  disable_netrw = true,
  auto_close = false,
  open_on_tab = false,
  update_cwd = false,
  update_focused_file = {
    enable = true
  },
  view = {
    width = 33,
    height = 30,
    side = 'left',
    auto_resize = true
  }
}