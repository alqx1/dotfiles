local M = {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
}

M.config = function()
    require('lualine').setup {
        options = {
            theme = 'nord',
            component_separators = { left = '|', right = '|' },
            section_separators = { left = '', right = '' },
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'diff', 'diagnostics' },
            lualine_c = { 'filename' },
            lualine_x = { '' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
        },
    }
end

return M
