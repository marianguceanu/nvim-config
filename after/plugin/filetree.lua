-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
		git_clean = false,
		no_buffer = false,
		git_ignored = false,
		custom = {},
		exclude = { 'node_modules' },
	},
})


-- Keymaps
vim.keymap.set('n', '<S-e>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
