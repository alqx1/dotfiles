local M = {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', "nvim-telescope/telescope-file-browser.nvim" }
}

M.config = function()
    require("telescope").setup {
        extensions = {
        },
    }

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

    require("telescope").load_extension "file_browser"
end

return M
