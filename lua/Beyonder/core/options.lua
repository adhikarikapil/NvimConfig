vim.cmd("let g:netrw_banner = 0")

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.backspace = { "start", "eol", "indent" }

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.mouse = "a"
vim.g.editorconfig = true

vim.opt.clipboard = "unnamedplus"

-- AutoSave setup using built-in Neovim autocommands
vim.api.nvim_create_augroup("AutoSaveGroup", { clear = true })  -- Create a new autocmd group

vim.api.nvim_create_autocmd("InsertLeave", {
    group = "AutoSaveGroup",  -- Add the autocmd to the "AutoSaveGroup"
    pattern = "*",  -- Apply to all file types
    callback = function()
        if vim.bo.modified and vim.bo.buftype == "" then  -- Only save if the buffer is modified and is a normal file
            vim.cmd("write")  -- Save the file
            print("AutoSave: Saved at " .. vim.fn.strftime("%H:%M:%S"))
        end
    end,
})

vim.api.nvim_create_autocmd("TextChanged", {
    group = "AutoSaveGroup",
    pattern = "*",
    callback = function()
        if vim.bo.modified and vim.bo.buftype == "" then  -- Only save if the buffer is modified and is a normal file
            vim.cmd("write")
            print("AutoSave: Saved at " .. vim.fn.strftime("%H:%M:%S"))
        end
    end
})
 
