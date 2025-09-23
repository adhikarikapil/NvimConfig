return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.keymap.set('n', "<leader>ff", ':Neotree toggle<CR>')
        vim.keymap.set('n', "<leader>fa", ':Neotree toggle reveal<CR>')
        require('neo-tree').setup({
            window = {
                width = 50,
            }
        })
    end,
    lazy = false,
}
