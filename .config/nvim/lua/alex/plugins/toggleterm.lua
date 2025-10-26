local M = {
    -- amongst your other plugins
    'akinsho/toggleterm.nvim',
    version = ""
}

M.config = function()
    require("toggleterm").setup {
       open_mapping = '<C-B>'
    }
end

return M
