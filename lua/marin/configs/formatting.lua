require("conform").setup({
	formatters_by_ft = {
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		css = { "prettier" },
		json = { "prettier" },
		python = { "isort", "pylint", "black" },
		lua = { "stylua" },
	},

	format_on_save = {
		lsp_fallback = true,
		async = true,
		timeout_ms = 2000,
	},
})
