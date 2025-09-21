return {
	{

		"folke/snacks.nvim",
		priority = 1000,
		opts = {
			lazygit = {cmd = "/home/beyonder/go/bin/lazygit",},
		},
		keys = {
			{
			    "<leader>lg",
			    function() require("snacks").lazygit() end,
			    desc = "Lazygit",
			},
			{
			    "<leader>gl",
			    function() require("snacks").lazygit.log() end,
			    desc = "Lazygit Log",
			},s
		},
	},
    {
        'folke/todo-comments.nvim',
        event = {'BufReadPre', 'BufNewFile'},
        keys = {
            {
                "<leader>pt",
                function() require("snacks").picker.todo_commets() end,
                desc = "TODO"
            },
            {
                "<leader>pT",
                function() require("snacks").picker.todo_commets({keywords = {"TODO", "FIX", "FIXME"}}) end,
                desc = "TODO"
            },
        }
    }
}
