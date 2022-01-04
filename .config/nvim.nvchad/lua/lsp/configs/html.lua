local M = {}

M.config = function (lspconfig, attach, capabilities)
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  lspconfig.html.setup {
    on_attach = attach,
    capabilities = capabilities,
  }
end

return M
