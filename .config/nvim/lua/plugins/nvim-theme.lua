return {
	-- Other plugin configurations...
	{
		"fenetikm/falcon", -- The Falcon plugin repository on GitHub
		name = "falcon", -- The name of the color scheme
		lazy = false, -- Set to false so it loads immediately on startup
		priority = 1000, -- Ensures it loads before other plugins
		config = function()
			vim.cmd("colorscheme falcon") -- Set the colorscheme on startup
		end,
	},
	-- More plugin configurations...
}
