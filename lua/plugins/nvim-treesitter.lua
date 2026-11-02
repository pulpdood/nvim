return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').install({ 'typescript', 'tsx', 'javascript', 'lua' })
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact', 'lua' },
      callback = function() vim.treesitter.start() end,
    })
  end,
}
