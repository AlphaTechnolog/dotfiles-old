keymap('n', 'K', ':Lspsaga hover_doc<cr>', { noremap = true, silent = true })
keymap('i', '<c-k>', '<cmd>Lspsaga hover_doc<cr>', { noremap = true, silent = true })
keymap('n', 'gh', ':Lspsaga lsp_finder<cr>', { noremap = true, silent = true })
keymap('n', '<c-e>', ':Lspsaga diagnostic_jump_next<cr>', { noremap = true, silent = true })
