-- Set <space> as the leader key
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.opt.number = true
vim.opt.relativenumber = true

-- disable mouse interaction
vim.opt.mouse = ''

-- Don't show the mode, since it's already in the status line
-- vim.o.showmode = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- show sign column on the left
vim.opt.signcolumn = "yes"

-- wait time in ms (after stop typing) before triggering actions
vim.opt.updatetime = 300

-- Decrease mapped sequence wait time
-- vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Show <tab> and trailing spaces
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Highlight the line where the cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s) See `:help 'confirm'`
vim.opt.confirm = true

-- convert tabs to spaces
vim.opt.expandtab = true
-- set the visual width of a tab character to 4 spaces
vim.opt.tabstop = 4
-- set the number of spaces used for each step of (auto)indent
vim.opt.shiftwidth = 4
-- number of spaces that a <Tab> counts for while performing editing operations
vim.opt.softtabstop = 4

-- enable 24-bit RGB (TrueColor)
vim.opt.termguicolors = true

vim.opt.breakindent = true

-- disable line wrapping
-- vim.opt.wrap = false

-- enable persistent undo
--vim.opt.undofile = true

--vim.g.netrw_banner = 0

vim.diagnostic.config({
    severity_sort = true,
    float = { border = 'rounded', source = 'if_many', },
    -- underline = { severity = { min = vim.diagnostic.severity.WARN } },
    -- virtual_text = { prefix = '●', current_line = true },
    on_jump = { float = true }
})


-- [[ Add optional packages ]]
-- Nvim comes bundled with a set of packages that are not enabled by
-- default. You can enable any of them by using the `:packadd` command.

-- For example, to add the "nohlsearch" package to automatically turn off search highlighting after
-- 'updatetime' and when going to insert mode
--vim.cmd('packadd! nohlsearch')
