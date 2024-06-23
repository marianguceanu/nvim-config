local function diagnostics()
	vim.cmd.highlight("DiagnosticUnderlineError gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineInfo gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineOk gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineWarn gui=undercurl")
	vim.cmd.highlight("DiagnosticUnderlineHint gui=undercurl")
	vim.cmd.highlight("DiagnosticError guibg=red")
end

local function dark_colorings()
	vim.api.nvim_set_hl(0, "MatchParen", { fg = "red" })
	vim.api.nvim_set_hl(0, "Comment", { italic = true, fg = "grey" })
	-- vim.api.nvim_set_hl(0, "Function", { bold = true, fg = "#9adde3" })
	-- vim.api.nvim_set_hl(0, "Keyword", { bold = true, fg = "NvimLightRed" })
	-- vim.api.nvim_set_hl(0, "@variable", { fg = "cyan" })
	-- vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#a9d941" })
	-- vim.api.nvim_set_hl(0, "Identifier", { fg = "#3d87b8" })
	-- vim.api.nvim_set_hl(0, "Constant", { fg = "#f08b5b" })
	-- vim.api.nvim_set_hl(0, "Type", { fg = "#f28fd8" })
end

local function line_numbers()
	vim.cmd.highlight("LineNr gui=bold guifg=#b7bf78")
	vim.cmd.highlight("LineNrAbove guifg=grey")
	vim.cmd.highlight("LineNrBelow guifg=grey")
end

local function transparency()
	vim.cmd.highlight("Normal guibg=none")
	vim.cmd.highlight("NonText guibg=none")
	vim.cmd.highlight("Normal ctermbg=none")
	vim.cmd.highlight("NonText ctermbg=none")
end

local function dark()
	vim.cmd.colorscheme("darkblue")
	vim.cmd.colorscheme("default")
	dark_colorings()
	diagnostics()
	line_numbers()
	-- vim.cmd.highlight("Normal guibg=#24262b")
	-- vim.cmd.highlight("NonText guibg=#24262b")
	transparency()
end

local function light()
	vim.cmd.colorscheme("morning")
	vim.cmd.colorscheme("default")
	vim.api.nvim_set_hl(0, "Comment", { italic = true, fg = "grey" })
	vim.api.nvim_set_hl(0, "Function", { bold = true })
	diagnostics()
	line_numbers()
	-- transparency()
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

-- local function transparency()
-- 	vim.cmd.highlight("Normal guibg=none")
-- 	vim.cmd.highlight("NonText guibg=none")
-- 	vim.cmd.highlight("Normal ctermbg=none")
-- 	vim.cmd.highlight("NonText ctermbg=none")
-- end
