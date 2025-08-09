vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

vim.g.gpp = "g++"
OS_NAME = vim.fn.system("uname -o"):gsub("%s+$", "")

if OS_NAME == "Darwin" then
	vim.g.gpp = "g++-15"
end

local home = os.getenv("HOME")
vim.g.cp_root = home .. "/cp-root/"
vim.g.gpp_args = {
	"-I" .. vim.g.cp_root,
	"-std=c++20",
	"-O3",
	"-DDEBUG",
}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")
require("lspconfig")
require("custom_functions")
require("keymaps")
require("snippets_generator")
require("autocmd")
