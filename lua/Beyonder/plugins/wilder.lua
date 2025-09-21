return {
  "gelguy/wilder.nvim",
  event = "CmdlineEnter",
  dependencies = { "romgrk/fzy-lua-native" },
  config = function()
    local wilder = require("wilder")

    wilder.setup({
      modes = { ":", "/", "?" },
    })

    -- Enable Lua fzy filter
    wilder.set_option("use_python_remote_plugin", 0)

    -- Highlighter
    wilder.set_option("highlighter", {
      wilder.lua_fzy_highlighter(),
    })

    -- Popup menu renderer styled like noice cmdline
    wilder.set_option("renderer", wilder.popupmenu_renderer(
      wilder.popupmenu_border_theme({
        highlights = {
          border = "NoiceCmdlinePopupBorder",  -- Use Noice border highlight
          accent = "NoiceCmdlinePopupBorder",  -- Accent like Noice
          selected_accent = "NoiceCmdlineIcon", -- Selected entry highlight
        },
        border = "rounded",  -- Rounded corners like noice
        empty_message = wilder.popupmenu_empty_message_with_spinner(),
        highlighter = wilder.lua_fzy_highlighter(),
        left = {
          " ", wilder.popupmenu_devicons(), " ",  -- file icons
        },
        right = {
          " ", wilder.popupmenu_scrollbar(),
        },
      })
    ))
  end,
}
