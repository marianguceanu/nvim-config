require("marin.configs.themes.customs")


local function dark()
	vim.cmd.colorscheme("darkblue")
	vim.cmd.colorscheme("default")
	ComplementaryColoring()
	Diagnostics()
	LineNumbers()
	-- Transparency()
end

local function light()
	vim.cmd.colorscheme("morning")
	vim.cmd.colorscheme("default")
	vim.api.nvim_set_hl(0, "Comment", { italic = true, fg = "grey" })
	vim.api.nvim_set_hl(0, "Function", { bold = true })
	Diagnostics()
	LineNumbers()
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
