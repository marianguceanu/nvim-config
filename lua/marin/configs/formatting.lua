require("conform").setup({
	formatters_by_ft = {
		c = { "clang-format" },
		bash = { "beautysh" }
	},

	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 2000,
	},
})
