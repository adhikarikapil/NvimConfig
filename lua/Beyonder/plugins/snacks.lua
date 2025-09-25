-- return {
-- 	{
--
-- 		"folke/snacks.nvim",
-- 		priority = 1000,
-- 		opts = {
-- 			lazygit = {cmd = "/home/beyonder/go/bin/lazygit",},
-- 		},
-- 		keys = {
-- 			{
-- 			    "<leader>lg",
-- 			    function() require("snacks").lazygit() end,
-- 			    desc = "Lazygit",
-- 			},
-- 			{
-- 			    "<leader>gl",
-- 			    function() require("snacks").lazygit.log() end,
-- 			    desc = "Lazygit Log",
-- 			},
-- 		},
-- 	},
--     {
--         'folke/todo-comments.nvim',
--         event = {'BufReadPre', 'BufNewFile'},
--         keys = {
--             {
--                 "<leader>pt",
--                 function() require("snacks").picker.todo_comments() end,
--                 desc = "TODO"
--             },
--             {
--                 "<leader>pT",
--                 function() require("snacks").picker.todo_comments({keywords = {"TODO", "FIX", "FIXME"}}) end,
--                 desc = "TODO"
--             },
--         }
--     }
-- }
return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		opts = {
			lazygit = { cmd = "/home/beyonder/go/bin/lazygit" },
		},
		keys = {
			{
				"<leader>gg",
				function()
					require("snacks").lazygit()
				end,
				desc = "Lazygit",
			},
			{
				"<leader>gl",
				function()
					require("snacks").lazygit.log()
				end,
				desc = "Lazygit Log",
			},
		},
	},
	-- {
	-- 	"folke/todo-comments.nvim",
	-- 	event = { "BufReadPre", "BufNewFile" },
	-- 	optional = true,
	-- 	keys = {
	-- 		{
	-- 			"<leader>pt",
	-- 			function()
	-- 				require("snacks").picker.todo_comments()
	-- 			end,
	-- 			desc = "Todo",
	-- 		},
	-- 		{
	-- 			"<leader>pT",
	-- 			function()
	-- 				require("snacks").picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
	-- 			end,
	-- 			desc = "Todo/Fix/Fixme",
	-- 		},
	-- 	},
	-- },
}
