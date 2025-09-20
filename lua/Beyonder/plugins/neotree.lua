return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, but recommended
  },
  config = function()
    vim.keymap.set('n', '<leader>fa', ':Neotree toggle<CR>')
    require('neo-tree').setup({
        window = {
            width = 30,
        }
    })
  end,
  lazy = false, -- neo-tree will lazily load itself
}
