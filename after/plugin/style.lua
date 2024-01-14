-- One dark
require('onedark').setup {
	style = 'deep',
	transparent = false,
	ending_tildes = false,
	code_style = {
		comments = 'italic',
		keywords = 'none',
		functions = 'none',
		strings = 'none',
		variables = 'bold'
	},
	lualine = {
		transparent = true, -- lualine center bar transparency
	},
}
require('onedark').load()
