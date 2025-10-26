local m = {
    "kevinhwang91/nvim-ufo",
    dependencies = { 'kevinhwang91/promise-async' }
}

m.config = function()
    vim.keymap.set('n', '<leader>O', require('ufo').openAllFolds)
    vim.keymap.set('n', '<leader>P', require('ufo').closeAllFolds)
    require('ufo').setup()
end

return m
