-- requirements
--
-- brew/apt install clangd
--

local cmd = {
	"clangd",
	"--header-insertion=never",
}

if vim.g.os_name == "Darwin" then
	table.insert(cmd, "--query-driver=/opt/homebrew/bin/g++-*,/opt/homebrew/bin/gcc-*")
end

if vim.g.os_name == "Android" then
	table.insert(cmd, "--query-driver=g++ -I" .. vim.g.cp_root)
end

vim.lsp.config("clangd", { cmd = cmd })
vim.lsp.enable("clangd")
