require'nvim-tree'.setup {
  disable_netrw = true,
  open_on_setup = true,
  auto_close = true,
  open_on_tab = false,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
  view = {
    width = 30,
    height = 30,
    side = 'left',
    auto_resize = true
  }
}
