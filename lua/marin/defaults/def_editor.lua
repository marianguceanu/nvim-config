-- Nice number showing
vim.cmd("set nu")
vim.cmd("set relativenumber")

-- Always show at least 15 lines above/below cursor
vim.cmd("set scrolloff=15")
-- vim.cmd("set guicursor=n-v-c-i:block")

-- No highlight on search
vim.opt.hlsearch = false
vim.opt.incsearch = true
-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Code folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 5
vim.opt.foldnestmax = 4

-- Block cursor all the time
vim.cmd([[set guicursor=n-v-c-i:block]])

vim.cmd([[autocmd BufEnter *.py set ai sw=4 ts=4 sta et fo=croql]])
vim.cmd([[autocmd BufEnter *.dart set ai sw=2 ts=2]])
vim.cmd([[autocmd BufEnter *.js set ai sw=2 ts=2]])
vim.cmd([[autocmd BufEnter *.jsx set ai sw=2 ts=2]])
vim.cmd([[autocmd BufEnter *.ts set ai sw=2 ts=2]])
vim.cmd([[autocmd BufEnter *.tsx set ai sw=2 ts=2]])
vim.cmd([[autocmd BufEnter *.css set ai sw=2 ts=2]])
vim.cmd([[autocmd BufEnter *.json set ai sw=2 ts=2]])
vim.cmd([[autocmd BufEnter *.cs set ai sw=4 ts=4]])
vim.cmd([[autocmd BufEnter *.java set ai sw=4 ts=4]])
