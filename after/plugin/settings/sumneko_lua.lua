return {
	settings = {

		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$home/AppData/local/nvim/after")] = true,
					[vim.fn.stdpath("config") .. "/after"] = true,
				},
			},
		},
	},
}
