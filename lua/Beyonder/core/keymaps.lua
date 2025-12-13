local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>s", ":source<CR>")
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set('n', '<leader>Q', ":qall<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>/", ":noh<CR>")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

--Keymap for Tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")

vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "C-v", '"+p', { noremap = true, silent = true })

-- Navigation remap
vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", { noremap = true, silent = true })

-- Splits
vim.api.nvim_set_keymap("n", "<leader>v", "<C-w>v", { noremap = true, silent = true })

-- Zooms / Focus on splits
vim.api.nvim_set_keymap("n", "<leader>m", "<C-w>|", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>z", "<C-w>_", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>=", "<C-w>=", { noremap = true, silent = true })

--  For Folds
vim.api.nvim_set_keymap("n", "<leader>o", "zR", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>zo", "zM", { noremap = true, silent = true })
