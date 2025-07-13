local M = {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    }
}

M.config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    })

    mason_lspconfig.setup({
        ensure_installed = {
            "clangd",
            "java_language_server",
            "lua_ls",
            "pyright",
        }
    })
end

return M
