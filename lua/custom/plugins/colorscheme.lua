-- return {
--   'folke/tokyonight.nvim',
--   priority = 1000,
--   init = function()
--     vim.cmd.colorscheme 'tokyonight-night'
--
--     vim.cmd.hi 'Comment gui=none'
--   end,
-- }

-- return {
--   'rose-pine/neovim',
--   name = 'rose-pine',
--   priority = 1000,
--   init = function()
--     require('rose-pine').setup {
--       variant = 'main',
--       highlight_groups = {
--         -- Keyword = { fg = 'iris' },
--       },
--     }
--
--     vim.cmd.colorscheme 'rose-pine'
--
--     vim.cmd.hi 'Comment gui=none'
--   end,
-- }

return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    require('catppuccin').setup {
      color_overrides = {
        mocha = {
          base = '#15151f',
        },
      },
    }

    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}
