return {
	"A7lavinraj/assistant.nvim",
	lazy = false,
	keys = {
		{ "<M-s>", "<cmd>Assistant<cr>", desc = "Assistant.nvim" },
	},
	config = function()
		local cpp_compile_args = vim.deepcopy(vim.g.gpp_args)

		table.insert(cpp_compile_args, "$FILENAME_WITH_EXTENSION")
		table.insert(cpp_compile_args, "-o")
		table.insert(cpp_compile_args, ".ast/$FILENAME_WITHOUT_EXTENSION")

		require("assistant").setup({
			commands = {
				cpp = {
					extension = "cpp",
					template = vim.g.cp_root .. "cpp.snip.cpp",
					compile = {
						main = vim.g.gpp,
						-- Use the table we just created
						args = cpp_compile_args,
					},
					execute = {
						main = ".ast/$FILENAME_WITHOUT_EXTENSION",
						args = nil,
					},
				},
			},
			ui = {
				diff_mode = false,
				title_components_separator = "",
			},
			core = {
				process_budget = 5000,
				port = 12345,
			},
		})
	end,
}

