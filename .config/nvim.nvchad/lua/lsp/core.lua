local M = {}
local configs = {
  -- uncomment/comment where you want to enable/disable
  -- the configs are located in /lua/lsp/configs/*
  'html',
  'cssls',
  'emmetls',
  'intelephense',
  'tsserver',
  'pyright',
  'vls'
}
local lspconfig = require('lspconfig')

M.setup_lsp = function (attach, capabilities)
  for _, config in ipairs(configs) do
    local lspmod = require('lsp.configs.' .. config)
    lspmod.config(lspconfig, attach, capabilities)
  end
end

return M
