-- transparent background
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
vim.opt.number = true
vim.pack.add({ 'https://github.com/lewis6991/gitsigns.nvim' })
require('gitsigns').setup()
-- Disable netrw so it doesn't fight nvim-tree. Must be at the very top of init.lua.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.pack.add({
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/nvim-tree/nvim-tree.lua',
  'https://github.com/nvim-tree/nvim-web-devicons', -- optional, needs a Nerd Font
})
