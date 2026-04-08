local general_conf_group = vim.api.nvim_create_augroup('GeneralConfigs', { clear = true })

-- Sync clipboard between OS and Neovim. Schedule the setting after `UiEnter` because it can              
-- increase startup-time. Remove this option if you want your OS clipboard to remain independent.    
-- vim.api.nvim_create_autocmd('UIEnter', {
--     desc = 'Sync clipboard between OS and Neovim',
--     group = general_conf_group,
--     callback = function() vim.opt.clipboard = 'unnamedplus' end
-- })

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking text',
    group = general_conf_group,
    callback = function() vim.hl.on_yank() end
})

-- vim.api.nvim_create_autocmd('LspAttach', {
  --   callback = function(ev)
  --     local client = vim.lsp.get_client_by_id(ev.data.client_id)
  --     if client:supports_method('textDocument/completion') then
  --         vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
  --     end
  --   end,
  -- })

  -- vim.cmd("set completeopt+=noselect")

-- See `:h nvim_create_user_command()` and `:h user-commands`

-- Create a command `:GitBlameLine` that print the git blame for the current line
--vim.api.nvim_create_user_command('GitBlameLine', function()
--  local line_number = vim.fn.line('.') -- Get the current line number. See `:h line()`
--  local filename = vim.api.nvim_buf_get_name(0)
--  print(vim.fn.system({ 'git', 'blame', '-L', line_number .. ',+1', filename }))
--end, { desc = 'Print the git blame for the current line' })
