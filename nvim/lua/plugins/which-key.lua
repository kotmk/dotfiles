	return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "modern",
        delay = 500,
        spec = {
            { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
            { '<leader>t', group = '[T]oggle' },
            { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } }, -- Enable gitsigns recommended keymaps first
            { 'gr', group = 'LSP Actions', mode = { 'n', 'v' } },
        },
        win = {
            height = { min = 4, max = 15 },
        },
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
}
