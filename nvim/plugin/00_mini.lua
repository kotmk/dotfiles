vim.pack.add({
    'https://github.com/nvim-mini/mini.icons',
    'https://github.com/nvim-mini/mini.comment',
})

local icons = require('mini.icons')
icons.setup()
icons.mock_nvim_web_devicons()

require('mini.comment').setup()
