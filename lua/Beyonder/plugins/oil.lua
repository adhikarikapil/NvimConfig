return {
    "stevearc/oil.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("oil").setup({
            default_file_explorer = true, --start up nvim with oil instead of netrw,
            columns = { },
            keymaps = {
                ["<C-h>"] = false,
                ["<C-c>"] = false,
                ["<M-h>"] = "action.select_split",
                ["q"] = "actions.close",
            },
            delete_to_trash = true,
            view_options = {
                show_hidden = true,
            },
            skip_confirm_for_simple_edits = true,
        })

        --Keymaps for oil
        vim.keymap.set("n", '<leader>na', require("oil").toggle_float, {desc = 'toggle float oil'})

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "oil",
            callback = function()
                vim.opt_local.cursorline = true
            end
        })

        --Transparent background for floating Oil Explorer
        vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
        vim.api.nvim_set_hl(0, "FloatBorder", {bg = "none"})
    end
}
