local sidebar = require("sidebar-nvim")
sidebar.setup({
	sections = { "files", require("dap-sidebar-nvim.breakpoints"), "git", "todos" },
	update_interval = 300,
	files = {
		icon = "",
		show_hidden = true,
		ignored_paths = { "%.git$" },
	},
	dap = {
		breakpoints = {
			icon = "",
		},
	},
	["git"] = {
		icon = "",
	},
	todos = {
		icon = "",
		ignored_paths = { "~" }, -- ignore certain paths, this will prevent huge folders like $HOME to hog Neovim with TODO searching
		initially_closed = false, -- whether the groups should be initially closed on start. You can manually open/close groups later.
	},
})
