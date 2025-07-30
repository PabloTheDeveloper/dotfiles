return {
	{
		"hedyhli/outline.nvim",
		config = function()
			-- Example mapping to toggle outline
			vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

			require("outline").setup({
				outline_window = {
					position = 'left',
					width = 35,
					relative_width = true
				},
				symbol_folding = {
					autofold_depth = false -- won't fold outline
				},
			})
		end,
	},
}
