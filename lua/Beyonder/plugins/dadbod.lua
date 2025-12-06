return {
	{
		"tpope/vim-dadbod",
	},
	{
		"kristijanhusak/vim-dadbod-ui",
		keys = {
			{ "<leader>db", "<cmd>DBUI<CR>", desc = " Open DB UI " },
            { "<leader>dc", "<cmd>DBUIClose<CR>", desc = "Close DB UI"},
            { "<leader>dq", "<cmd>DBUIFindBuffer<CR>", desc = "Find DB Buffer"},
		},
        config = function ()
            vim.g.db_ui_use_nerd_fonts = 1
        end,
	},
    {
        "kristijanhusak/vim-dadbod-completion",
    }
}
