return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      on_colors = function(colors)
        colors.fg = "#c8d3f5" -- brighten white text just a smidge
        -- https://github.com/folke/tokyonight.nvim/blob/main/extras/lua/tokyonight_night.lua
      end,
    },
  },
  -- Configure LazyVim to load tokyonight
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
