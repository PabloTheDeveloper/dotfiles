return {
	-- Meant for automatic file template creation
	{
		"glepnir/template.nvim",
		cmd = { "Template", "TemProject" },
		config = function()
			require("template").setup({
				temp_dir = "~/.config/nvim/templates",
			})
		end,
	},
	-- EasySnippets is more feature filled but this works for now (use tab to invoke after
	-- typing in keywords)
	{
		"dcampos/nvim-snippy",
		config = function()
			require("snippy").setup({
				snippet_dirs = "~/.config/nvim/snippets",
				local_snippet_dir = "~/.config/nvim/snippets",
				mappings = {
					is = {
						["<Tab>"] = "expand_or_advance",
						["<S-Tab>"] = "previous",
					},
					nx = {
						["<leader>x"] = "cut_text",
					},
				},
			})
		end,
	},
}
