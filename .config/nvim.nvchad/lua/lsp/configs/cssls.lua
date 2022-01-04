local M = {}

M.config = function (lspconfig, attach, capabilities)
  lspconfig.cssls.setup {
    on_attach = attach,
    capabilities = capabilities,
  }
end

return M
