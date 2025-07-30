vim.opt.linebreak = true      -- Wraps punctuation.
vim.opt.breakindent = true    -- Wrapped lines keep indent.
vim.opt.showbreak = ">>>"     -- Special symbol(s) identifying wrapped lines

vim.opt.number = true         -- always show location of absolute line.
vim.opt.relativenumber = true -- shows relative numbers.
vim.opt.paste = false         -- text won't be inserted literally.

vim.opt.wrapmargin = 2        -- show existing tab with 2 spaces width
vim.opt.tabstop = 2           -- when indenting with '>' use 2 spaces width
vim.opt.shiftwidth = 2

-- vim.opt.colorscheme = "falcon"
vim.opt.termguicolors = true
-- if using lightline or airline see https://github.com/fenetikm/falcon/wiki/Installation#vim--neovim

-- Renders whitespace using special characters.
vim.opt.list = true

-- enables folding
vim.g.markdownfolding = 1

-- Make new splits always split that direction.
-- vim.opt.splitbelow = true
vim.opt.splitright = true -- (conflicts w/ default for :Outline)
-- This command below doesn't work the way I want it to.
-- vim.opt.switchbuf = "useopen,usetab,vsplit,split"
-- markdown folding
require("config.lazy")
-- outline docs clarify that this is needed.
-- require("outline").setup({})
