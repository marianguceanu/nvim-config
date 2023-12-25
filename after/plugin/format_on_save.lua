local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup({
	exclude_path_patterns = {
		"/node_modules/",
	},
	formatter_by_ft = {
		dart = formatters.ast_grep,
		css = formatters.lsp,
		html = formatters.lsp,
		java = formatters.lsp,
		json = formatters.lsp,
		lua = formatters.lsp,
		markdown = formatters.prettierd,
		openscad = formatters.lsp,
		rust = formatters.lsp,
		scad = formatters.lsp,
		scss = formatters.lsp,
		sh = formatters.shfmt,
		terraform = formatters.lsp,
		typescript = formatters.prettierd,
		typescriptreact = formatters.prettierd,
		yaml = formatters.lsp,

		-- Add your own shell formatters:
		myfiletype = formatters.shell({ cmd = { "myformatter", "%" } }),

		-- Add lazy formatter that will only run when formatting:
		my_custom_formatter = function()
			if vim.api.nvim_buf_get_name(0):match("/README.md$") then
				return formatters.prettierd
			else
				return formatters.lsp()
			end
		end,

		-- Add custom formatter
		filetype1 = formatters.remove_trailing_whitespace,
		filetype2 = formatters.custom({
			format = function(lines)
				return vim.tbl_map(function(line)
					return line:gsub("true", "false")
				end, lines)
			end
		}),

		-- Concatenate formatters
		python = {
			formatters.pylint,
			formatters.pyright,
			formatters.isort,
			formatters.autopep8,
		},
		c_sharp = {
			formatters.omnisharp,
			formatters.csharpier,
		},

		-- Use a tempfile instead of stdin
		go = {
			formatters.shell({
				cmd = { "goimports-reviser", "-rm-unused", "-set-alias", "-format", "%" },
				tempfile = function()
					return vim.fn.expand("%") .. '.formatter-temp'
				end
			}),
			formatters.shell({ cmd = { "gofmt" } }),
		},

		-- Add conditional formatter that only runs if a certain file exists
		-- in one of the parent directories.
		javascript = {
			formatters.prettierd,
		},
	},

	-- Optional: fallback formatter to use when no formatters match the current filetype
	fallback_formatter = {
		formatters.remove_trailing_whitespace,
		formatters.remove_trailing_newlines,
	},

	-- By default, all shell commands are prefixed with "sh -c" (see PR #3)
	-- To prevent that set `run_with_sh` to `false`.
	run_with_sh = false,
})
