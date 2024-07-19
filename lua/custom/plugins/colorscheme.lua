-- return {
--   'catppuccin/nvim',
--   name = 'catppuccin',
--   priority = 1000,
--   init = function()
--     require('catppuccin').setup {
--       color_overrides = {
--         mocha = {
--           base = '#15151f',
--           mantle = '#313244',
--         },
--       },
--
--       custom_highlights = function()
--         return {
--           NeoTreeNormal = { bg = '#15151d' },
--           NeoTreeNormalNC = { bg = '#15151d' },
--         }
--       end,
--     }
--
--     vim.cmd.colorscheme 'catppuccin-mocha'
--   end,
-- }
-- return {
--   'folke/tokyonight.nvim',
--   priority = 1000,
--   init = function()
--     vim.cmd.colorscheme 'tokyonight-moon'
--
--     vim.cmd.hi 'Comment gui=none'
--   end,
-- }
--
return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000,
  init = function()
    require('rose-pine').setup {
      styles = {
        italic = false,
        transparency = true,
      },
      variant = "default",
      highlight_groups = {
        -- Keyword = { fg = 'iris' },
      },
    }

    vim.cmd.colorscheme 'rose-pine'

    vim.cmd.hi 'Comment gui=none'
  end,
}
