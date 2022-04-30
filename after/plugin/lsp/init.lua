local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "C:\\Users\\57312\\AppData\\local\\nvim\\after\\plugin\\lsp\\configs"
require("plugin.lsp.handlers").setup()
require "plugin.lsp.null-ls"
