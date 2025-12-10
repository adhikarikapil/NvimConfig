return {
    'mbbill/undotree',
    config = function()
        vim.keymap.set('n', '<leader>u', function()
            vim.cmd.UndotreeToggle()
            -- Focus on the UndoTree window after toggling
            vim.cmd('wincmd p')  -- This will switch to the last accessed window (the UndoTree)
        end)
    end
}
