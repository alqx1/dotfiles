local M = {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
}

M.config = function()
    local ui = vim.api.nvim_list_uis()[1]
    require("nvim-tree").setup({})
    vim.keymap.set({ "n", "v" }, "<leader>te", "<cmd>NvimTreeToggle<CR>")
end

return M
