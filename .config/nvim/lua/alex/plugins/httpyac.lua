return {
    "abidibo/nvim-httpyac",
    config = function()
        require('nvim-httpyac').setup({
            output_view = "horizontal" -- "vertical" | "horizontal"
        })

        vim.keymap.set('n', '<Leader>rr', '<cmd>:NvimHttpYac<CR>', { desc = 'Run request' })
        vim.keymap.set('n', '<Leader>ra', '<cmd>:NvimHttpYacAll<CR>', { desc = 'Run all requests' })
        vim.keymap.set('n', '<Leader>rp', '<cmd>:NvimHttpYacPicker<CR>', { desc = 'Run named request' })
    end
}
