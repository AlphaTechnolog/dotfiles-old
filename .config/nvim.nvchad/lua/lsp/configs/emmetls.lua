local M = {}

M.config = function (lspconfig, attach, capabilities)
  lspconfig.emmet_ls.setup {
    on_attach = attach,
    capabilities = capabilities,
  }
end

return M
