local dap = require('dap')
require('dap-python').setup('C:\\Users\\maria\\AppData\\Local\\Programs\\Python\\Python312\\python.exe')
dap.configurations.python = {
	{
		type = 'python',
		request = 'launch',
		name = "Launch file",
		program = "${file}",
		pythonPath = function()
			return 'C:\\Users\\maria\\AppData\\Local\\Programs\\Python\\Python312\\python.exe'
		end,
	},
}
require("neodev").setup({
	library = { plugins = { "nvim-dap-ui" }, types = true },
})
require("dapui").setup()
