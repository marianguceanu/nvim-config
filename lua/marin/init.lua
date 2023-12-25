require("marin.remap")
-- Nice number showing
vim.cmd("set nu")
vim.cmd("set relativenumber")

-- Always show at least 15 lines above/below cursor
vim.cmd("set scrolloff=15")
vim.cmd("set guicursor=n-v-c-i:block")

-- No highlight on search
vim.opt.hlsearch = false
vim.opt.incsearch = true
-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
