function TokyoNight()
	-- require("tokyonight").setup({
	-- 	style = "night",
	-- 	light_style = "day",
	-- 	transparent = false,
	-- 	terminal_colors = true,
	-- 	styles = {
	--
	-- 		comments = { italic = true },
	-- 		keywords = { italic = true },
	-- 		functions = { bold = true },
	-- 		variables = {},
	-- 		sidebars = "dark",
	-- 		floats = "dark",
	-- 	},
	-- 	sidebars = { "qf", "help" },
	-- 	day_brightness = 0.3,
	-- 	hide_inactive_statusline = false,
	-- 	dim_inactive = false,
	-- 	lualine_bold = true,
	--
	-- 	on_colors = function(colors) end,
	--
	-- 	on_highlights = function(highlights, colors) end,
	-- })
	vim.cmd([[colorscheme tokyonight-night]])

	vim.keymap.set("n", "<leader>td", function()
		vim.cmd([[colorscheme tokyonight-night]])
	end, opts)

	vim.keymap.set("n", "<leader>tl", function()
		vim.cmd([[colorscheme tokyonight-day]])
	end, opts)
end
