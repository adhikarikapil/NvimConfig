return {
    'nvim-lualine/lualine.nvim',
    config = function()
        require("lualine").setup({
            options = {
                theme = 'catppuccin',
                globalstatus = true,
            }
        })
        vim.opt.laststatus = 3
        vim.opt.showmode = false 
    end
}
