local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end



local status, lsp_installer = pcall(require, "nvim-lsp-installer")
if (not status) then return end

lsp_installer.on_server_ready(function(server)
  local opts = {}
  local lspconfig = require("lspconfig")

  local servers = { "jsonls", "sumneko_lua" }

  server:setup({
    ensure_installed = servers
  })

  for _, server in pairs(servers) do
    local opts = {
      on_attach = require("plugin.handlers").on_attach,
      capabilities = require("plugin.handlers").capabilities,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "plugin.settings." .. server)
    if has_custom_opts then
      opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
    end
    lspconfig[server].setup(opts)
  end
end)
