require("flutter-tools").setup({

	ui = {
		border = "rounded",
	},
	decorations = {
		statusline = {
			app_version = true,
			device = true,
			project_config = true,
		},
	},
	debugger = {
		enabled = false,
		run_via_dap = false,
		exception_breakpoints = {},
		register_configurations = function(_) end,
	},
	flutter_path = "/home/marianguceanu/development/flutter/bin/flutter",
	flutter_lookup_cmd = nil,
	root_patterns = { ".git", "pubspec.yaml" },
	fvm = false,
	widget_guides = {
		enabled = false,
	},
	closing_tags = {
		highlight = "Comment",
		prefix = "// ",
		enabled = true,
	},
	dev_log = {
		enabled = true,
		notify_errors = false,
		open_cmd = "tabedit",
	},
	dev_tools = {
		autostart = false,
		auto_open_browser = false,
	},
	outline = {
		open_cmd = "30vnew",
		auto_open = false,
	},
	lsp = {
		color = {
			enabled = true,
			background = false,
			background_color = nil,
			foreground = false,
			virtual_text = true,
			virtual_text_str = "■",
		},
		settings = {
			showTodos = true,
			completeFunctionCalls = true,
			analysisExcludedFolders = { "/home/marianguceanu/development/flutter/bin/" },
			renameFilesWithClasses = "always",
			enableSnippets = true,
			updateImportsOnRename = true,
		},
	},
})
