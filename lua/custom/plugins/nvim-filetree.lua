-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    -- { '<leader>x', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
    { '<leader>e', ':Neotree toggle<CR>' },
  },
  opts = {
    close_if_last_window = true,
    window = {
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
      },
    },
  },
}
