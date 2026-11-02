return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
        css = { 'prettier' },
        html = { 'prettier' },
        json = { 'prettier' },
        yaml = { 'prettier' },
        markdown = { 'prettier' },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true, -- Fallback to LSP if Prettier isn't available
      },
    })

    -- Manual format keymap
    vim.keymap.set({ 'n', 'v' }, '<leader>mp', function()
      require('conform').format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = 'Format file or range (Prettier)' })
  end,
}
