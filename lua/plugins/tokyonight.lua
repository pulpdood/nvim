return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000, -- load before other plugins
  config = function()
    require('tokyonight').setup({
      transparent = true,
      styles = { sidebars = 'transparent', floats = 'transparent' },
    })
    vim.cmd.colorscheme('tokyonight-night')
  end,
}
