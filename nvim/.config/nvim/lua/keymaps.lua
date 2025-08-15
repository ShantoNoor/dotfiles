local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- commentry
keymap.set({ "n", "v" }, "<C-t>", ":CommentToggle<cr>")
keymap.set({ "n", "v" }, "<C-/>", ":CommentToggle<cr>")

keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", opts)

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "_", "<C-x>")

-- clipboard
keymap.set({ "n", "v" }, "p", [["+p]], opts)
keymap.set({ "n", "v" }, "P", [["+P]], opts)
keymap.set({ "n", "v" }, "y", [["+y]], opts)

-- Delete
keymap.set("n", "x", '"_x', opts)
keymap.set("n", "D", '"_D', opts)
keymap.set({ "n", "v" }, "d", '"_d', opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)
keymap.set("n", "<leader>c", 'ggVG"+y', opts)
keymap.set({ "n", "v" }, "<leader>x", '"+d', opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<M-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Resizing
vim.keymap.set("n", "<leader><Up>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<leader><Down>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<leader><Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<leader><Right>", ":vertical resize +2<CR>", opts)

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

keymap.set("n", "<C-s>", ":wa!<Return>", opts)
keymap.set("n", "<C-q>", ":qa!<Return>", opts)

keymap.set("n", "<leader>/", Layout0, opts)
keymap.set("n", "<leader>.", Layout2, opts)
keymap.set("n", "<leader>,", Layout1, opts)

keymap.set({ "n", "i" }, "<C-b>", _cpp_build_and_run_io, opts)
keymap.set({ "n", "i" }, "<A-b>", _ast_run, opts)
keymap.set({ "n", "i" }, "<A-s>", _ast_show, opts)
