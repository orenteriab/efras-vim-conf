vim.g.mapleader  = "f"

local keymap = vim.keymap

-- Normal mode
keymap.set("n", "<Leader>s", ":w<CR>", {noremap = true})
keymap.set("n", "<Leader>o", ":Files<CR>", {noremap = true})
keymap.set("n", "<Leader>p", ":GFiles<CR>", {noremap = true})
keymap.set("n", "<Leader>S", ":wq<CR>", {noremap = true})
keymap.set("n", "<Leader>q", ":q<CR>", {noremap = true})
keymap.set("n", "<Leader>Q", ":q!<CR>", {noremap = true})
keymap.set("n", "<Leader>Q", ":q!<CR>", {noremap = true})
keymap.set("n", "<Leader>l", ":<C-w>l", {noremap = true})
keymap.set("n", "<Leader>h", ":<C-w>h", {noremap = true})
keymap.set("n", "<Leader>k", ":<C-w>k", {noremap = true})
keymap.set("n", "<Leader>Q", ":<C-w>j", {noremap = true})
keymap.set("n", "<Leader>w", ":bd<CR>", {noremap = true})

-- Insert mode
keymap.set("i", "<C-s>", "<Esc>:w<CR>", {noremap = true})
keymap.set("i", "<C-w>", "<Esc>:bd<CR>", {noremap = true})
