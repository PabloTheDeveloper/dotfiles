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
--- Clipboard
vim.opt.paste = false -- Paste text literally.
-----------------------------------------------------------
--- Remappings
-----------------------------------------------------------
-- Visual Block
vim.api.nvim_set_keymap('n', '<A-v>', '<C-v>', { noremap = true, silent = false })
-- Window Movements
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-=>', '<C-w>=', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<A-n>', '<C-w>v', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<A-S-n>', '<C-w>s', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-+>', '<C-w>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-_>', '<C-w>-', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<A-=>', '<C-w>>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<A-->', '<C-w><', { noremap = true, silent = false })
-- Mimic Chrome / VsCode
-- Remap Ctrl+Tab
vim.api.nvim_set_keymap('n', '<C-tab>', ':tabnext', { noremap = true, silent = true })
-- Remap Ctrl+Shift+Tab
vim.api.nvim_set_keymap('n', '<C-S-tab>', ':tabprev', { noremap = true, silent = true })
-- Remap Alt+D,Alt+Enter (duplicates tab)
vim.api.nvim_set_keymap('n', '<A-d><A-CR>', ':tabnew %<CR>', { noremap = true, silent = true })
-- Remap Ctrl+T (%:h == current_path but remove the last file path)
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>', { noremap = true, silent = true })
-- Remap Ctrl+W (be careful about saving)
vim.api.nvim_set_keymap('n', '<C-w>', ':q<CR><CR>', { noremap = true, silent = true })
-- Remap Ctrl+S
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
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
