return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    opts = function()
      return {
        flavour = "mocha",
        transparent_background = true,
      }
    end,
  },
}
