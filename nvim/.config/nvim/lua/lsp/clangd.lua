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

vim.lsp.config("clangd", { cmd = cmd })
vim.lsp.enable("clangd")
