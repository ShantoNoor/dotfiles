local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- commentry
keymap.set({ "n", "v" }, "<C-t>", ":CommentToggle<cr>")
keymap.set({ "n", "v" }, "<C-/>", ":CommentToggle<cr>")

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "_", "<C-x>")

-- clipboard
vim.keymap.set({ "n", "v" }, "p", [["+p]])
vim.keymap.set({ "n", "v" }, "y", [["+y]])

-- Delete
keymap.set("n", "x", '"_x')
keymap.set("n", "D", '"_D')
keymap.set({ "n", "v" }, "d", '"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<leader>c", 'ggVG"+y', { desc = "Copy entire file to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>x", '"+d', { desc = "Cut to system clipboard" })

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<M-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-l>", "<C-w>l")

keymap.set("n", "<C-s>", ":wa!<Return>")
keymap.set("n", "<C-q>", ":qa!<Return>")

keymap.set("n", "<leader>/", Layout0)
keymap.set("n", "<leader>.", Layout2)
keymap.set("n", "<leader>,", Layout1)

keymap.set({ "n", "i" }, "<C-b>", _cpp_build_and_run_io, opts)
keymap.set({ "n", "i" }, "<M-b>", _ast_run, opts)
keymap.set({ "n", "i" }, "<M-s>", _ast_show, opts)
