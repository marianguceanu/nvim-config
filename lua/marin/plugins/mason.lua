return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup {}
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local lsp_zero = require('lsp-zero')
			require("mason-lspconfig").setup {
				handlers = {
					lsp_zero.default_setup,
					lua_ls = function()
						local lua_opts = lsp_zero.nvim_lua_ls()
						require('lspconfig').lua_ls.setup(lua_opts)
					end,
				}
			}
		end,
	},
	{
		"neovim/nvim-lspconfig",
	}
}
