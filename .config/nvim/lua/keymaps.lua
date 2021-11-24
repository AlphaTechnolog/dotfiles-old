local keymap = vim.api.nvim_set_keymap

local function makeWindowNavigation()
  local keys={'h', 'j', 'k', 'l'}
  for i, key in ipairs(keys) do
    keymap('n', '<c-' .. key .. '>', '<c-w>' .. key, { noremap = true })
  end
end

local function makeMultipleKeybindindsSameAction(mode, keys, action, noremap)
  for i, key in ipairs(keys) do
    keymap(mode, key, action, { noremap = noremap })
  end
end

local function makeMultipleKeybinds(mode, keys, actions, noremap)
  for i, key in ipairs(keys) do
    local action = actions[i]
    keymap(mode, key, action, { noremap = noremap })
  end
end

local function makeEscAbbrev()
  makeMultipleKeybindindsSameAction(
    'i',
    {'jk', 'kj', 'jj', 'kk'},
    '<esc>',
    true
  )
end

local function makeBuffersNavigation()
  makeMultipleKeybinds(
    'n',
    {'<Tab>', '<S-Tab>'},
    {':bn!<cr>', ':bp!<cr>'},
    true
  )

  keymap('n', '<c-b>', ':bd!<cr>', { noremap = true })
end

local function makeTreeMaps()
  keymap('n', '<space>n', ':NvimTreeToggle<cr>', { noremap = true })
end

local function makeTelescopeMaps()
  keymap('n', '<c-p>', ':Telescope find_files<cr>', { noremap = true })
end

local function symbolNavigationMaps()
  keymap('n', '<c-o>', ':SymbolsOutlineOpen<cr>', { noremap = true })
end

local function neovideFullscreen()
  keymap('n', '<c-f>', ':let g:neovide_fullscreen=v:true<cr>', { noremap = true })
  keymap('n', '<c-m-f>', ':let g:neovide_fullscreen=v:false<cr>', { noremap = true })
end

keymap('n', '<c-s>', ':w<cr>', { noremap = true })
keymap('n', '<c-q>', ':wq!<cr>', { noremap = true })

makeEscAbbrev()
makeWindowNavigation()
makeBuffersNavigation()
makeTreeMaps()
makeTelescopeMaps()
symbolNavigationMaps()
neovideFullscreen()
