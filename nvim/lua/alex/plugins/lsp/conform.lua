local M = {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            -- Customize or remove this keymap to your liking
            "<leader>l",
            function()
                require("conform").format({ async = false, lsp_format = "fallback", timeout_ms = 500 })
            end,
            mode = "",
            desc = "Format buffer",
        },
    },
    init = function()
        -- If you want the formatexpr, here is the place to set it
        vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
    end,
}

M.config = function()
    local conform = require("conform")
    local util = require("conform.util")

    conform.setup({
        formatters_by_ft = {
            lua = { "stylua" },
            c = { "clang_format" },
            cpp = { "clang_format" },
            python = { "black" },
        },

        formatters = {
            clang_format = {
                meta = {
                    url = "https://www.kernel.org/doc/html/latest/process/clang-format.html",
                    description = "Tool to format C/C++/… code according to a set of rules and heuristics.",
                },
                command = "clang-format",
                args = {
                    "--style=file:/home/alex/.config/nvim/lua/alex/.clang-format",
                    "-assume-filename",
                    "$FILENAME",
                },
                range_args = function(self, ctx)
                    local start_offset, end_offset = util.get_offsets_from_range(ctx.buf, ctx.range)
                    local length = end_offset - start_offset
                    return {
                        "--style=file:/home/alex/.config/nvim/lua/alex/.clang-format",
                        "-assume-filename",
                        "$FILENAME",
                        "--offset",
                        tostring(start_offset),
                        "--length",
                        tostring(length),
                    }
                end,
            },
            stylua = {
                meta = {
                    url = "https://github.com/devOpifex/r.nvim",
                    description = "R formatter and linter.",
                },
                command = util.find_executable({ "usr/bin/" }, "R"),
                args = { "-s", "-e", "r.nvim::format()", "--args", "$FILENAME" },
                stdin = false,
            },
        }
    })
end

return M
