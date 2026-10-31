require('gitsigns').setup({
  on_attach = function(bufnr)
    local gs = require('gitsigns')
    local map = function(lhs, rhs, desc)
      vim.keymap.set('n', lhs, rhs, { buffer = bufnr, desc = desc })
    end
    map(']c', function() gs.nav_hunk('next') end, 'Next hunk')
    map('[c', function() gs.nav_hunk('prev') end, 'Prev hunk')
    map('<leader>hp', gs.preview_hunk, 'Preview hunk')
    map('<leader>hs', gs.stage_hunk, 'Stage hunk')
    map('<leader>hr', gs.reset_hunk, 'Reset hunk')
    map('<leader>hb', gs.blame_line, 'Blame line')
  end,
})
