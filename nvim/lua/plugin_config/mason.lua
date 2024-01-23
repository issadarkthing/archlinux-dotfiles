
require("mason").setup()
require("mason-lspconfig").setup()

vim.cmd[[autocmd FileType mason highlight MasonNormal ctermbg=12]]
vim.cmd[[autocmd! ColorScheme * highlight FloatBorder ctermbg=12]]

local bufopts = { noremap=true, silent=true, buffer=bufnr }
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', '<leader>yr', vim.lsp.buf.rename, bufopts)
vim.keymap.set('n', '<leader><leader>', vim.lsp.buf.code_action, bufopts)
vim.keymap.set('n', '<leader>i', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[g', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']g', vim.diagnostic.goto_next, opts) vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts) vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)

local on_attach = function(client, bufnr)
    -- disable formatter
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false

    vim.g.coq_settings = {
        auto_start = true,
        clients = {
            buffers = {
                enabled = false,
            },
            lsp = {
                always_on_top = {},
            },
            snippets = {
                enabled = false,
                warn = {}
            },
        }
    }

    vim.cmd[[COQnow -s]]
end

local lspconfig = require("lspconfig")

require('typescript-tools').setup {
    on_attach = on_attach
}

-- lspconfig.tsserver.setup{
--   on_attach = on_attach
-- }

lspconfig.prismals.setup{}
lspconfig.eslint.setup{}
