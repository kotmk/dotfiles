vim.keymap.set(
    'n', '<Esc>', '<cmd>nohlsearch<CR>',
    { desc = 'clear search highlight when pressing <Esc> in Normal Mode' }
)

vim.keymap.set(
    't', '<Esc><Esc>', '<C-\\><C-n>',
    { desc = 'Exit terminal mode' }
)

local toggle_line_numbering = function()
    if vim.o.number then
        vim.opt.number = false
        vim.opt.relativenumber = false
        print("Line Numbering: OFF")
    else
        vim.opt.number = true
        vim.opt.relativenumber = true
        print("Line Numbering: ON")
    end
end
vim.keymap.set('n', '<leader>tl', toggle_line_numbering, { desc = 'Toggle Line Numbering' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w><C-k>', { desc = 'Move focus to the upper window' })


-- lua/keymaps.lua
vim.keymap.set('n', '<leader>gc', '<cmd>echo "Status"<cr>', { desc = "File Status" })
vim.keymap.set('n', '<leader>gg', '<cmd>echo "Status"<cr>', { desc = "Git Status" })
