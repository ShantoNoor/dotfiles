return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup()
		require("mason-tool-installer").setup({
			run_on_start = false,
			ensure_installed = {
				"html",
				"cssls",
				"tailwindcss",
				"jsonls",
				"prettier",
				"eslint",
				"ts_ls",
				"biome",
				"lua_ls",
				"stylua",
				"markdownlint",
			},
		})
	end,
}
