local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)
keymap.set("n", "<Leader>t", ":NvimTreeToggle<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Compile
keymap.set("n", "<C-c>", ":CompetiTest run<CR>", ops)

-- Diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end, opts)
vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, opts)

vim.keymap.set("n", "<C-h>", function()
	harpoon:list():select(1)
end, opts)
vim.keymap.set("n", "<C-t>", function()
	harpoon:list():select(2)
end, opts)
vim.keymap.set("n", "<C-n>", function()
	harpoon:list():select(3)
end, opts)
vim.keymap.set("n", "<C-s>", function()
	harpoon:list():select(4)
end, opts)

vim.keymap.set("n", "L", function()
	harpoon:list():prev()
end, opts)

vim.keymap.set("n", "H", function()
	harpoon:list():next()
end, opts)
