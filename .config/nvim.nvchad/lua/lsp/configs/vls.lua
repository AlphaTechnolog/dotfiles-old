local M = {}

M.config = function (lspconfig, attach, capabilities)
  lspconfig.vls.setup {
    on_attach = attach,
    capabilities = capabilities,
  }
end

return M
