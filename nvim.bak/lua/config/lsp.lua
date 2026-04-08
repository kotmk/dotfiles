vim.diagnostic.config({
    severity_sort = true,
    float = { border = 'rounded', source = 'if_many', },
    -- underline = { severity = { min = vim.diagnostic.severity.WARN } },
    -- virtual_text = { prefix = '●', current_line = true },
    jump = { float = true }
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
