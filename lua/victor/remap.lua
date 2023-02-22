vim.g.mapleader = " "

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<Up>", ":tabnew<CR>")
vim.keymap.set("n", "<Left>", ":tabprev<CR>")
vim.keymap.set("n", "<Right>", ":tabnext<CR>")
vim.keymap.set("n", "<Down>", ":tabclose<CR>")

-- Escape terminal insert mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
