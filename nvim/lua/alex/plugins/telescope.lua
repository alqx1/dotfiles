local M = {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', "nvim-telescope/telescope-file-browser.nvim" }
}

M.config = function()
    require("telescope").setup {
        extensions = {
        },
    }

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

    vim.keymap.set("n", "<leader>fb", function()
        require("telescope").extensions.file_browser.file_browser()
    end)

    require("telescope").load_extension "file_browser"
end

return M
