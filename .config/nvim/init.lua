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

local map = vim.keymap.set

map({ "i", "s" }, "<tab>", function()
	return require("snippy").can_expand_or_advance() and "<plug>(snippy-expand-or-advance)" or "<tab>"
end, { expr = true })
map({ "i", "s" }, "<s-tab>", function()
	return require("snippy").can_jump(-1) and "<plug>(snippy-previous)" or "<s-tab>"
end, { expr = true })
map("x", "<Tab>", "<plug>(snippy-cut-text)")
map("n", "g<Tab>", "<plug>(snippy-cut-text)")
