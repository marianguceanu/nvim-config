local function undercurls()
	vim.cmd.highlight("DiagnosticUnderlineError gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineInfo gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineOk gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineWarn gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineHint gui=undercurl")
end

local function dark_colorings()
	vim.api.nvim_set_hl(0, "Comment", { italic = true, fg = "grey" })
	vim.api.nvim_set_hl(0, "Function", { bold = true, fg = "lightblue" })
	vim.api.nvim_set_hl(0, "Keyword", { bold = true, fg = "pink" })
	vim.api.nvim_set_hl(0, "MatchParen", { fg = "red" })
	vim.api.nvim_set_hl(0, "@variable", { fg = "cyan" })
	vim.api.nvim_set_hl(0, "@type.builtin", { fg = "orange" })
end

local function dark()
	vim.cmd([[colorscheme darkblue]])
	vim.cmd([[colorscheme default]])
	-- dark_colorings()
	undercurls()
end

local function light()
	vim.cmd([[colorscheme morning]])
	vim.cmd([[colorscheme default]])
	vim.api.nvim_set_hl(0, "Comment", { italic = true, fg = "grey" })
	vim.api.nvim_set_hl(0, "Function", { bold = true })
	undercurls()
end

function Default()
	dark()
	vim.keymap.set("n", "<leader>td", function()
		dark()
	end, opts)

	vim.keymap.set("n", "<leader>tl", function()
		light()
	end, opts)
end
