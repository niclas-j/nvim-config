return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      skip_confirm_for_simple_edits = true,
      float = {
        max_width = 400,
      },
    }

    -- vim.keymap.set('n', '<leader>o', '<CMD>Oil --float<CR>')
  end,
}
