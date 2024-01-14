local dap = require 'dap'
local dapui = require 'dapui'

require('mason-nvim-dap').setup {
	-- Makes a best effort to setup the various debuggers with
	-- reasonable debug configurations
	automatic_setup = true,

	-- You can provide additional configuration to the handlers,
	-- see mason-nvim-dap README for more information
	handlers = {},

}

-- Basic debugging keymaps, feel free to change to your liking!
vim.keymap.set('n', '<F5>', dap.continue, { desc = 'Debug: Start/Continue' })
vim.keymap.set('n', '<F1>', dap.step_into, { desc = 'Debug: Step Into' })
vim.keymap.set('n', '<F2>', dap.step_over, { desc = 'Debug: Step Over' })
vim.keymap.set('n', '<F3>', dap.step_out, { desc = 'Debug: Step Out' })
vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
vim.keymap.set('n', '<leader>B', function()
	dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
end, { desc = 'Debug: Set Breakpoint' })

-- Dap UI setup
-- For more information, see |:help nvim-dap-ui|
dapui.setup {
	-- Set icons to characters that are more likely to work in every terminal.
	--    Feel free to remove or use ones that you like more! :)
	--    Don't feel like these are good choices.
	icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
	controls = {
		icons = {
			pause = '⏸',
			play = '▶',
			step_into = '⏎',
			step_over = '⏭',
			step_out = '⏮',
			step_back = 'b',
			run_last = '▶▶',
			terminate = '⏹',
			disconnect = '⏏',
		},
	},
}

-- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
vim.keymap.set('n', '<F7>', dapui.toggle, { desc = 'Debug: See last session result.' })

dap.listeners.after.event_initialized['dapui_config'] = dapui.open
dap.listeners.before.event_terminated['dapui_config'] = dapui.close
dap.listeners.before.event_exited['dapui_config'] = dapui.close



-- Python debugger
require('dap-python').setup('~/AppData/Local/Programs/Python/Python312/python.exe')

-- Flutter debugger
-- dap.adapters.dart = {
-- 	type = "executable",
-- 	command = "flutter",
-- 	-- This command was introduced upstream in https://github.com/dart-lang/sdk/commit/b68ccc9a
-- 	args = { "debug_adapter" }
-- }
-- dap.configurations.dart = {
-- 	{
-- 		name = "Launch",
-- 		request = "launch",
-- 		type = "dart",
-- 		program = "${file}",
-- 		cwd = "${workspaceFolder}",
-- 		toolArgs = { "-d", "chrome" }, -- Note for Dart apps this is args, for Flutter apps toolArgs
-- 	},
-- 	{
-- 		name = "Launch (profile)",
-- 		request = "launch",
-- 		type = "dart",
-- 		flutterMode = "profile",
-- 		program = "${file}",
-- 		cwd = "${workspaceFolder}",
-- 		toolArgs = { "-d", "chrome" }, -- Note for Dart apps this is args, for Flutter apps toolArgs
-- 	},
-- 	{
-- 		name = "Launch (release)",
-- 		request = "launch",
-- 		type = "dart",
-- 		flutterMode = "release",
-- 		program = "${file}",
-- 		cwd = "${workspaceFolder}",
-- 		toolArgs = { "-d", "chrome" }, -- Note for Dart apps this is args, for Flutter apps toolArgs
-- 	}
-- }

dap.adapters.coreclr = {
	type = 'executable',
	command = 'C:\\Users\\maria\\AppData\\Local\\nvim-data\\mason\\packages\\netcoredbg\\netcoredbg\\netcoredbg.exe',
	args = { '--interpreter=vscode' }
}
dap.configurations.cs = {
	{
		type = "coreclr",
		name = "launch - netcoredbg",
		request = "launch",
		program = function()
			return vim.fn.input('Path to dll ', vim.fn.getcwd() .. '\\bin\\Debug\\', 'file')
		end,
	},
}

dap.adapters.dart = {
	type = "executable",
	command = "~/AppData/Local/nvim-data/mason/bin/dart-debug-adapter.cmd",
	args = { "flutter" }
}

dap.configurations.dart = {
	{
		type = "dart",
		request = "launch",
		name = "Launch flutter",
		dartSdkPath = 'C:\\flutter\\bin',
		flutterSdkPath = "C:\\flutter\\bin",
		program = "${workspaceFolder}/lib/main.dart",
		cwd = "${workspaceFolder}",
	}
}
-- uncomment below line if you've launch.json file already in your vscode setup
-- require("dap.ext.vscode").load_launchjs()
