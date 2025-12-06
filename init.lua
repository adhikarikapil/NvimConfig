require("Beyonder.core")
require("Beyonder.lazy")

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "sql", "mysql", "pgsql", "plsql", "dbout" },
    callback = function()
        vim.bo.commentstring = "-- %s"
    end,
})
