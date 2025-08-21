-----------------------------------------------------------
--- Base Settings
-----------------------------------------------------------
--- Wrapping
vim.opt.textwidth = 80        -- Wraps text at 80 lines.
vim.opt.linebreak = true      -- Wraps punctuation (only visual effect).
vim.opt.list = true           -- Shows blankspace.
vim.opt.breakindent = true    -- Visually indent breaks (>>>)
vim.opt.showbreak = ">>>"     -- Wrapped line symbol.
--- Spacing
vim.opt.shiftwidth = 2        -- >> and << commands width.
vim.opt.expandtab = false     -- Don't expand tabs to spaces.
vim.opt.tabstop = 2           -- How many spaces a tab counts for.
--- Lines
vim.opt.number = true         -- Absolute line location.
vim.opt.relativenumber = true -- Shows relative numbers.
--- Window
vim.opt.mouse = "a"           -- allows mouse to control window resize.
vim.opt.splitbelow = true
vim.opt.splitright = true
--- Clipboard (need wl-clipboard)
vim.opt.clipboard = "unnamedplus" -- Sync "+ to clipboard
vim.opt.paste = false             -- Paste text literally.
-----------------------------------------------------------
--- Remappings
-----------------------------------------------------------
local map = vim.keymap.set
-- Move words.
map({ "n", "i" }, "<C-Left>", "<Cmd>normal! B<CR>", { desc = "Move back a word" })
map({ "n", "i" }, "<C-Right>", "<Cmd>normal! E<CR>", { desc = "Move forward a word" })
-- Select words.
map("v", "<C-S-Left>", "b", { desc = "Extend selection back a word" })
map("v", "<C-S-Right>", "e", { desc = "Extend selection forward a word" })
-- Delete words (normal).
map("n", "<C-BS>", "db", { desc = "Delete previous word" })
map("n", "<C-Del>", "dw", { desc = "Delete next word" })
-- Delete words (insert).
map("i", "<C-BS>", "<C-W>", { desc = "Delete previous word" })
map("i", "<C-Del>", "<C-o>dw", { desc = "Delete next word" })
-- Visual Block
map('n', '<C-v>', '<C-v>', { noremap = true, silent = false })
-- Window Movements
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
map('n', '<C-=>', '<C-w>=', { noremap = true, silent = false })
map('n', '<C-n>', '<C-w>v', { noremap = true, silent = false })
map('n', '<C-S-n>', '<C-w>s', { noremap = true, silent = true })
map('n', '<C-+>', '<C-w>+', { noremap = true, silent = true })
map('n', '<C-_>', '<C-w>-', { noremap = true, silent = false })
-- map('n', '<C-=>', '<C-w>>', { noremap = true, silent = false })
map('n', '<C-->', '<C-w><', { noremap = true, silent = false })
-- Mimic Chrome / VsCode
-- Remap Ctrl+Tab
map('n', '<C-tab>', ':tabnext', { noremap = true, silent = true })
-- Remap Ctrl+Shift+Tab
map('n', '<C-S-tab>', ':tabprev', { noremap = true, silent = true })
-- Remap Alt+D,Alt+Enter (duplicates tab)
map('n', '<C-d><C-CR>', ':tabnew %<CR>', { noremap = true, silent = true })
-- Remap Ctrl+T (%:h == current_path but remove the last file path)
map('n', '<C-t>', ':tabnew<CR>', { noremap = true, silent = true })
-- Remap Ctrl+W (be careful about saving)
map('n', '<C-w>', ':q<CR><CR>', { noremap = true, silent = true })
-- Remap Ctrl+S
map('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
-----------------------------------------------------------
--- Custom Commands
-----------------------------------------------------------
-- Clears Registers
vim.api.nvim_create_user_command(
	'WipeReg',
	function()
		-- 0-9
		for i = 48, 57 do
			vim.fn.setreg(string.char(i), {})
		end
		-- a-z
		for i = 97, 122 do
			vim.fn.setreg(string.char(i), {})
		end
	end,
	{})
-- source Nvim init.lua file
vim.api.nvim_create_user_command(
	'Source',
	function()
		vim.cmd("luafile $NVIM/init.lua")
	end,
	{})
-- Ctrl+[N] jump to tab
local function jump_to_tab(tab_number)
	if tab_number and tonumber(tab_number) then
		vim.cmd("tabn " .. tab_number)
	end
end
-- Loop through numbers 1 to 9 to create mappings for Ctrl+1 to Ctrl+9
for i = 1, 9 do
	vim.keymap.set("n", "<C-" .. i .. ">", function()
		jump_to_tab(i)
	end, { desc = "Jump to tab " .. i })
end
-----------------------------------------------------------
--- Configures Lazy Plugin Manager
-----------------------------------------------------------
require("config.lazy")
vim.cmd("colorscheme carbonfox")
