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

-- Create an autocommand group specifically for markdown settings
-- This helps keep related autocommands organized and allows clearing them easily
vim.api.nvim_create_augroup("MarkdownSpecificSettings", { clear = true })

-- Apply settings specifically for markdown files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown", -- This pattern matches files with the 'markdown' filetype
	group = "MarkdownSpecificSettings", -- Assign this autocommand to our group
	callback = function()
		-- Disable swap file for the current buffer (the markdown file)
		-- Using vim.opt_local ensures this setting only applies to the buffer
		vim.opt_local.swapfile = false

		-- Set up an autocommand to autosave when leaving insert mode
		-- This triggers a write command for the current buffer (buffer = 0)
		vim.api.nvim_create_autocmd("InsertLeave", {
			buffer = 0, -- Apply only to the current buffer where FileType markdown was detected
			group = "MarkdownSpecificSettings", -- Use the same group
			callback = function()
				vim.cmd("write") -- Execute the ':write' command to save the buffer
			end,
		})

		-- Optional: You could also add an autocommand to save after a short pause
		-- in normal mode using 'CursorHold', but 'InsertLeave' is often sufficient
		-- for a simple autosave while editing.
		--[[
    vim.api.nvim_create_autocmd('CursorHold', {
      buffer = 0,
      group = 'MarkdownSpecificSettings',
      callback = function()
        vim.cmd('write')
      end
    })
    ]]
	end,
})
