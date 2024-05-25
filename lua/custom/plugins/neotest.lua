return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'mfussenegger/nvim-dap',

    -- Adapter
    'marilari88/neotest-vitest',
  },

  init = function()
    local neotest = require 'neotest'

    neotest.setup {
      adapters = {
        require 'neotest-vitest',
      },
    }

    -- Test current File
    vim.keymap.set('n', '<leader>tf', function()
      neotest.run.run(vim.fn.expand '%')

      -- Test current case
      vim.keymap.set('n', '<leader>tc', function()
        neotest.run.run { strategy = 'dap' }
      end)

      -- Test Stop
      vim.keymap.set('n', '<leader>ts', function()
        neotest.run.stop()
      end)

      -- Test Panel
      vim.keymap.set('n', '<leader>tp', function()
        neotest.summary.toggle()
      end)

      -- Test Output
      vim.keymap.set('n', '<leader>to', function()
        neotest.output.open()
      end)
    end)
  end,
}
