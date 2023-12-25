local builtin = require('telescope.builtin')
-- Project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Rg > "), search_dirs = { vim.fn.getcwd() } });
end)
