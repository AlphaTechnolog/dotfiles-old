vim.cmd [[
  if has('termguicolors')
    set termguicolors
  endif

  set background=dark

  let g:gruvbox_material_background = 'hard'
  let g:gruvbox_material_ui_contrast = 'high'
  let g:gruvbox_material_palette = 'material'
  let g:gruvbox_material_enable_italic = 0
  let g:gruvbox_material_transparent_background = 1
  let g:gruvbox_material_disable_italic_comment = 1

  colorscheme gruvbox-material
]]
