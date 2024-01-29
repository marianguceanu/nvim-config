require("flutter-tools").setup {
	ui = {
		border = "rounded",
	},
	decorations = {
		statusline = {
			app_version = true,
			device = true,
			project_config = true,
		}
	},
	debugger = {  -- integrate with nvim dap + install dart code debugger
		enabled = true,
		run_via_dap = true, -- use dap instead of a plenary job to run flutter apps
		exception_breakpoints = {},
		register_configurations = function(_)
			require("dap").adapters.dart = {
				type = "executable",
				command =
				"C:\\Users\\maria\\AppData\\Local\\nvim-data\\mason\\bin\\dart-debug-adapter.cmd",
				args = { "flutter" }
			}

			require("dap").configurations.dart = {
				{
					type = "dart",
					request = "launch",
					name = "Launch flutter",
					dartSdkPath = 'C:\\flutter\\bin\\cache\\dart-sdk',
					flutterSdkPath = "C:\\flutter",
					program = "${workspaceFolder}\\lib\\main.dart",
					cwd = "${workspaceFolder}",
				}
			}
			-- uncomment below line if you've launch.json file already in your vscode setup
			-- require("dap.ext.vscode").load_launchjs()
		end,

	},
	flutter_path = "C:\\flutter\\bin\\flutter.bat",
	flutter_lookup_cmd = nil,            -- example "dirname $(which flutter)" or "asdf where flutter"
	root_patterns = { ".git", "pubspec.yaml" }, -- patterns to find the root of your flutter project
	fvm = false,                         -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
	widget_guides = {
		enabled = false,
	},
	closing_tags = {
		highlight = "Comment", -- highlight for the closing tag
		prefix = "// ", -- character to use for close tag e.g. > Widget
		enabled = true -- set to false to disable
	},
	dev_log = {
		enabled = true,
		notify_errors = false, -- if there is an error whilst running then notify the user
		open_cmd = "tabedit", -- command to use to open the log buffer
	},
	dev_tools = {
		autostart = true, -- autostart devtools server if not detected
		auto_open_browser = true, -- Automatically opens devtools in the browser
	},
	outline = {
		open_cmd = "30vnew", -- command to use to open the outline buffer
		auto_open = false -- if true this will open the outline automatically when it is first populated
	},
	lsp = {
		-- color = { -- show the derived colours for dart variables
		-- 	enabled = false, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
		-- 	background = false, -- highlight the background
		-- 	background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
		-- 	foreground = false, -- highlight the foreground
		-- 	virtual_text = true, -- show the highlight using virtual text
		-- 	virtual_text_str = "■", -- the virtual text character to highlight
		-- },
		settings = {
			showTodos = true,
			completeFunctionCalls = true,
			analysisExcludedFolders = { "C:\\flutter\\bin" },
			renameFilesWithClasses = "always", -- "always"
			enableSnippets = true,
			updateImportsOnRename = true, -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
		}
	}
}
