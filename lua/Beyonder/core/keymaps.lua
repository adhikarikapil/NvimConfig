local opts = {noremap = true, silent = true}
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>s", ":source<CR>")
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")

vim.keymap.set("n", "<leader>fa", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>/", ":noh<CR>")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


