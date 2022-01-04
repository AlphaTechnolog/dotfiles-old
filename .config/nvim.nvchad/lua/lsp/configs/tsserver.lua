local M = {}

M.config = function (lspconfig, attach, capabilities)
  lspconfig.tsserver.setup {
    on_attach = attach,
    capabilities = capabilities
  }
end

return M
