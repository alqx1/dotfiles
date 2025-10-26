local M = {
    "ellisonleao/gruvbox.nvim",
    priority = 1000 ,
    opts = ...
}

M.config = function()
    require("gruvbox").setup()
    vim.cmd([[colorscheme gruvbox]])
end

return M
