return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	config = function()
		require('telescope').setup {
			defaults = {
				mappings = {
					i = {
						['<C-u>'] = false,
						['<C-d>'] = false,
					},
				},
			},
		}

		pcall(require('telescope').load_extension, 'fzf')

		local builtin = require('telescope.builtin')
		-- Project files
		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
		vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
		vim.keymap.set('n', '<leader>/', function()
			-- You can pass additional configuration to telescope to change theme, layout, etc.
			require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
				winblend = 10,
				previewer = false,
			})
		end, { desc = '[/] Fuzzily search in current buffer' })
		vim.keymap.set('n', '<leader>ss', require('telescope.builtin').builtin,
			{ desc = '[S]earch [S]elect Telescope' })
		vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files,
			{ desc = 'Search [G]it [F]iles' })
		vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
		vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
		vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string,
			{ desc = '[S]earch current [W]ord' })
		vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
		vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics,
			{ desc = '[S]earch [D]iagnostics' })
		vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })


		require("telescope").load_extension("flutter")
	end
}
