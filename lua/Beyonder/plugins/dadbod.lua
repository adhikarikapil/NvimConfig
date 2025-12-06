return {
	{
		"tpope/vim-dadbod",
	},
	{
		"kristijanhusak/vim-dadbod-ui",
		keys = {
			{ "<leader>db", "<cmd>DBUIToggle<CR>", desc = " Open DB UI " },
			{ "<leader>dc", "<cmd>DBUIClose<CR>", desc = "Close DB UI" },
			{ "<leader>dq", "<cmd>DBUIFindBuffer<CR>", desc = "Find DB Buffer" },
		},
		config = function()
			vim.g.db_ui_use_nerd_fonts = 1
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "dbout",
				callback = function()
					vim.cmd("wincmd L")
					vim.cmd("vertical resize 85")
				end,
			})
		end,
	},
	{
		"kristijanhusak/vim-dadbod-completion",
	},
}
