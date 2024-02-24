require("conform").setup({
	formatters_by_ft = {
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		css = { "prettier" },
		json = { "prettier" },
		python = { "isort", "pylint" },
		lua = { "stylua" },
		cs = { "csharpier" },
		csharp = { "csharpier" },
	},

	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	},
})
