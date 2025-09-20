return{
  "folke/snacks.nvim",
  priority = 1000,
  opts = {
    lazygit = {
        cmd = "/home/beyonder/go/bin/lazygit"
    },
  },
  keys = {
      {"<leader>lg", function() require("snacks").lazygit() end, desc = "Lazygit"},
  },
}
