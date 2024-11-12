require("marin.configs.themes.customs")

function OneDark()
	require("onedark").setup({
		-- Main options --
		style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
		transparent = false, -- Show/hide background
		term_colors = true, -- Change terminal color as per the selected theme style
		ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
		cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

		code_style = {
			comments = "italic",
			keywords = "bold",
			functions = "bold",
			strings = "none",
			variables = "none",
		},
		-- Plugins Config --
		diagnostics = {
			darker = true, -- darker colors for diagnostic
			undercurl = true, -- use undercurl instead of underline for diagnostics
			background = true, -- use background color for virtual text
		},
	})

	require("onedark").load()
end
