return {
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       transparent = true,
  --       day_brightness = 0.5,
  --       styles = {
  --         sidebars = "transparent",
  --         floats = "transparent",
  --       },
  --     }
  --   end,
  -- },

  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    opts = function()
      return {
        flavour = "mocha",
        transparent_background = true,
        dim_inactive = {
          enabled = true, -- dims the background color of inactive window
        },
      }
    end,
  },
}
