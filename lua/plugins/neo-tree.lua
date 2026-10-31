return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    keys = {
      { '<leader>o', '<cmd>Neotree focus<CR>', desc = 'Focus file tree' },
      { '<leader>e', '<cmd>Neotree toggle<CR>', desc = 'Toggle file tree' },
      { '<leader>r', '<cmd>Neotree reveal<CR>', desc = 'Show current file in tree' },
    },
  }
}
