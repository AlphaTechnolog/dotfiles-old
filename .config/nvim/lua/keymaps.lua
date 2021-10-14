local keymap = vim.api.nvim_set_keymap

function makeWindowNavigation()
  local keys={'h', 'j', 'k', 'l'}
  for i, key in ipairs(keys) do
    keymap('n', '<c-' .. key .. '>', '<c-w>' .. key, { noremap = true })
  end
end

function makeMultipleKeybindindsSameAction(mode, keys, action, noremap)
  for i, key in ipairs(keys) do
    keymap(mode, key, action, { noremap = noremap })
  end
end

function makeMultipleKeybinds(mode, keys, actions, noremap)
  for i, key in ipairs(keys) do
    action = actions[i]
    keymap(mode, key, action, { noremap = noremap })
  end
end

function makeEscAbbrev()
  makeMultipleKeybindindsSameAction(
    'i',
    {'jk', 'kj', 'jj', 'kk'},
    '<esc>',
    true
  )
end

function makeBuffersNavigation()
  makeMultipleKeybinds(
    'n',
    {'<Tab>', '<S-Tab>'},
    {':bn!<cr>', ':bp!<cr>'},
    true
  )

  keymap('n', '<c-b>', ':bd!<cr>', { noremap = true })
end

function makeTreeMaps()
  keymap('n', '<c-n>', ':NvimTreeToggle<cr>', { noremap = true })
  keymap('n', '<c-m-n>', ':NvimTreeFocus<cr>', { noremap = true })
end

function makeTelescopeMaps()
	makeMultipleKeybinds(
		'n',
		{'<c-p>', '<c-t>'},
		{':Telescope find_files<cr>', ':Telescope buffers<cr>'},
		true
	)
end

keymap('n', '<c-s>', ':w<cr>', { noremap = true })
keymap('n', '<c-q>', ':wq!<cr>', { noremap = true })

makeEscAbbrev()
makeWindowNavigation()
makeBuffersNavigation()
makeTreeMaps()
makeTelescopeMaps()
