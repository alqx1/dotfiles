local M = {
    "nvim-treesitter/nvim-treesitter",

    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,

}

M.config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
        ensure_installed = {
            "c",
            "cpp",
            "lua",
            "java",
            "glsl",
            "yuck",
            "scss",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
    })
end

return M
