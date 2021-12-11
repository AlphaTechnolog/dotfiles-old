for i, map in ipairs({'jk', 'kj', 'kk', 'jj'}) do
  keymap('i', map, '<esc>', { noremap = true, silent = true })
end
