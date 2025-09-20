return {
    {
        {"echasnovski/mini.nvim", version = false},
        --Comments
        {
            'echasnovski/mini.comment',
            version = false,
            dependencies = {
                'JoosepAlviste/nvim-ts-context-commentstring',
            },
            config = function()
                require('ts_context_commentstring').setup{
                    -- tsx, jsx, html, svelte comment support
                    options = {
                        custom_commentstring = function()
                            return requre('ts_context_commentstring.internal').calculate_commentstring({
                                key = 'commentstring'
                            })
                            or vim.bo.commentstring
                        end,
                    },
                }
            end
        }
    },
    {

        'echasnovski/mini.files',
        config = function()
            local MiniFiles = require("mini.files")
            MiniFiles.setup({
                mappings = {
                    go_in = "<CR>", -- Map both Enter and L to enter directories or open files
                    go_in_plus = "L",
                    go_out = "-",
                    go_out_plus = "H",
                },
            })
            vim.keymap.set("n", "<leader>ee", "<cmd>lua MiniFiles.open()<CR>", { desc = "Toggle mini file explorer" }) -- toggle file explorer
            vim.keymap.set("n", "<leader>fa", function()
                MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
                MiniFiles.reveal_cwd()
            end, { desc = "Toggle into currently opened file" })
        end,
    }
}
