vim.opt.linebreak = true
vim.opt.wrapmargin = 2
vim.opt.wrap = true
-- show existing tab with 4 spaces width
vim.opt.tabstop = 2
-- when indenting with '>', use 4 spaces width
vim.opt.shiftwidth = 2

require("config.lazy")
require("conform").setup({
	formatters_by_ft = {
		markdown = { "prettier" },
		lua = { "stylua" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
