-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
-- EXAMPLE
local servers = { "html", "cssls", "clangd"}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,settings = {
    pyright = {autoImportCompletion = true,},
    python = {analysis = {
      autoSearchPaths = true,
      diagnosticMode = 'openFilesOnly',
      useLibraryCodeForTypes = true,
      typeCheckingMode = 'off'}
    }
  }
}

lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}
