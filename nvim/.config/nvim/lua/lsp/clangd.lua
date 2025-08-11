-- requirements
--
-- brew/apt install clangd
--

if vim.g.os_name == "Darwin" then
	vim.lsp.config("clangd", {
		cmd = {
			"clangd",
			"--query-driver=/opt/homebrew/bin/g++-*,/opt/homebrew/bin/gcc-*",
			"--header-insertion=never",
		},
	})
end

vim.lsp.enable("clangd")
