return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    style = "moon",
    dim_inactive = true,
    on_colors = function(colors)
      colors.bg_dark = "#101010"
    end,
  },
  -- "LazyVim/LazyVim",
  -- opts = {
  --   colorscheme = "catppuccin",
  -- },
}
