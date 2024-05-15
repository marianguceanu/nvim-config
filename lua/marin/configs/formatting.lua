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
		go = { "gotests", "goimports", "golines", "goimports-reviser" },
	},

	format_on_save = {
		lsp_fallback = true,
		async = true,
		timeout_ms = 2000,
	},
})
