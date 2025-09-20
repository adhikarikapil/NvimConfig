return{"catppuccin/nvim", name = 'catppuccin',
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        integrations = {
          telescope = true,
          treesitter = true,
        }
      })
      vim.cmd.colorscheme('catppuccin')
    end
  } 
