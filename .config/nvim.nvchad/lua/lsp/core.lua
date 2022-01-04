local M = {}
local configs = {
  -- uncomment where you want to enable, the configs are located in /lua/lsp/configs/*
  -- 'html',
  -- 'cssls',
  -- 'emmetls',
  -- 'intelephense',
  'tsserver',
}
local lspconfig = require('lspconfig')

M.setup_lsp = function (attach, capabilities)
  for _, config in ipairs(configs) do
    local lspmod = require('lsp.configs.' .. config)
    lspmod.config(lspconfig, attach, capabilities)
  end
end

return M
