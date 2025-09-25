return {
    {
        "b0o/incline.nvim",
        enabled = true,
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function ()
            local devicons = require("nvim-web-devicons")
            local custom_icon_color = "#89DCEB"
            local modified_color = "#ff9e64"

            -- Set the custom highlight group for the filename
            vim.cmd([[
              hi InclineFilename guifg=#28B463 gui=bold,italic
            ]])

            require("incline").setup({
                hide = {
                    only_win = false,
                },
                render = function (props)
                    local bufname = vim.api.nvim_buf_get_name(props.buf)
                    local filename = vim.fn.fnamemodify(bufname, ":t")
                    if filename == "" then filename = "[No Name]" end

                    local ext = vim.fn.fnamemodify(bufname, ":e")
                    local icon, _ = devicons.get_icon(filename, ext, {default = true})

                    local modified = vim.bo[props.buf].modified

                    return {
                        {" ", icon, " ", guifg = custom_icon_color},
                        {filename, group = "InclineFilename", gui = modified and "bold" or "none"},
                        modified and { " [+]", guifg = modified_color} or "",
                        " ",
                    }
                end,
            })
        end,
    }
}
