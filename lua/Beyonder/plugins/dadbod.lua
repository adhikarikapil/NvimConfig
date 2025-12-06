return {
    {
        "tpope/vim-dadbod",
    },
    {
        "kristijanhusak/vim-dadbod-ui",
        keys = {
            { "<leader>db", "<cmd>DBUIToggle<CR>", desc = "Open DB UI" },
            { "<leader>dc", "<cmd>DBUIClose<CR>", desc = "Close DB UI" },
            { "<leader>dq", "<cmd>DBUIFindBuffer<CR>", desc = "Find DB Buffer" },
        },

        init = function()
            vim.g.db_ui_use_nerd_fonts = 1
            vim.g.db_ui_winwidth = 20
        end,

        config = function()
            vim.api.nvim_create_autocmd("FileType", {
                pattern = "dbout",
                callback = function()
                    -- disable folding so results aren't collapsed
                    vim.opt_local.foldenable = false
                    vim.opt_local.foldcolumn = "0"
                    vim.opt_local.foldmethod = "manual"

                    -- open results on the right
                    vim.cmd("wincmd L")
                    vim.cmd("vertical resize 110")
                end,
            })
        end,
    },
    {
        "kristijanhusak/vim-dadbod-completion",
    },
}

