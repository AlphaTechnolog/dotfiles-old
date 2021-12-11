for i, key in ipairs({'h', 'j', 'k', 'l'}) do
  keymap('n', '<c-' .. key .. '>', '<c-w>' .. key .. '<cr>', { noremap = true, silent = true })
end
