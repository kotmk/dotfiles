vim.pack.add({
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/romus204/tree-sitter-manager.nvim',
})

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

vim.lsp.enable({
    'lua_ls',
    'basedpyright',
})

require("tree-sitter-manager").setup({
    auto_install = true
})

vim.diagnostic.config({
    severity_sort = true,
    float = { source = 'if_many', },
    -- underline = { severity = { min = vim.diagnostic.severity.WARN } },
    -- virtual_text = { prefix = '●', current_line = true },
    -- jump = { float = true },
    jump = {
        on_jump = function()
            vim.diagnostic.open_float({ scope = "cursor", focus = false })
        end,
    },
})

vim.keymap.set(
    'n', '<leader>q', vim.diagnostic.setloclist,
    { desc = 'Open diagnostic Quickfix list' }
)
