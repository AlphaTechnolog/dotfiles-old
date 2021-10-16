vim.cmd[[
augroup ColorizeAll
  autocmd!
  autocmd Filetype,BufEnter * execute 'ColorHighlight'
augroup END
]]
