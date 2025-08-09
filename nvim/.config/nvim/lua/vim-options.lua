-- vim.opt.spell = true
vim.opt.encoding = "utf-8" -- set encoding
vim.opt.nu = true -- enable line numbers
vim.opt.relativenumber = true -- relative line numbers
vim.opt.cursorline = true
vim.opt.wrap = false

vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 3

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.autoindent = true -- auto indentation
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.list = true -- show tab characters and trailing whitespace
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- unless capital letter in search

vim.opt.swapfile = false -- do not use a swap file for the buffer
vim.opt.backup = false -- do not keep a backup file
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- set directory where undo files are stored
vim.opt.undofile = true -- save undo history to a file

vim.opt.hlsearch = false -- do not highlight all matches on previous search pattern
vim.opt.incsearch = true -- incrementally highlight searches as you type

vim.opt.termguicolors = true -- enable true color support

vim.opt.scrolloff = 8 -- minimum number of lines to keep above and below the cursor
vim.opt.sidescrolloff = 8 --minimum number of columns to keep above and below the cursor
vim.opt.signcolumn = "yes" -- always show the sign column, to avoid text shifting when signs are displayed

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.mouse = "a"

vim.opt.guicursor = {
	"n-v-c:block", -- Normal/Visual/Command: block
	"i-ci:ver25", -- Insert/Insert-command: vertical bar (25% width)
	"r-cr:hor20", -- Replace/Command Replace: horizontal bar
	"o:hor50", -- Operator-pending: horizontal bar
	"a:blinkwait500-blinkon200-blinkoff150", -- Blinking config
}
