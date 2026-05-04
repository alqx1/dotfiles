local packages = {
    'https://github.com/scottmckendry/cyberdream.nvim',
    { src='https://github.com/nvim-treesitter/nvim-treesitter', version='main' },
    'https://github.com/stevearc/oil.nvim',

    -- lsp
    'https://github.com/mason-org/mason-lspconfig.nvim',
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/neovim/nvim-lspconfig',

    -- completion
    'https://github.com/hrsh7th/nvim-cmp',
    'https://github.com/hrsh7th/cmp-buffer',
    'https://github.com/hrsh7th/cmp-path',
    'https://github.com/hrsh7th/cmp-nvim-lsp',

    -- fzf
    'https://github.com/nvim-telescope/telescope.nvim',
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-telescope/telescope-fzf-native.nvim',
};
vim.pack.add(packages)

vim.cmd('colorscheme cyberdream')

-- minimal requires
require('nvim-treesitter').install({ 'zig', 'c', 'cpp', 'java', 'markdown' })

-- oil

local oil = require('oil')
oil.setup()


-- lsp
require('mason').setup()
require('mason-lspconfig').setup()

local lsps = {
    {
        "clangd",
        {
            cmd = { "clangd" },
            filetypes = { "c", "cpp", "objc", "objcpp" },
        },
    },
    {
        "zls",
        {
            cmd = { "zls" },
            filetypes = { "zig", },
        },
    },
}

for _, lsp in pairs(lsps) do
    local name, config = lsp[1], lsp[2]
    vim.lsp.enable(name)
    if config then
        vim.lsp.config(name, config)
    end
end

-- completion
local cmp = require('cmp')
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp"},
        { name = "buffer" },
        { name = "path" },
    }),
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
