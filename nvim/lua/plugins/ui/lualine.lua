-- statusline
return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local LazyVim = require("lazyvim.util")

      -- Customize lualine sections
      opts.sections.lualine_c[4] = {
        LazyVim.lualine.pretty_path({
          length = 0,
          relative = "cwd",
          modified_hl = "MatchParen",
          directory_hl = "",
          filename_hl = "Bold",
          modified_sign = "",
          readonly_icon = " 󰌾 ",
        }),
      }

      -- Custom Sections with Rounded Separators
      opts.sections.lualine_a = {
        { "mode", separator = { left = "" }, right_padding = 2 },
      }
      opts.sections.lualine_z = {
        { "location", separator = { right = "" }, left_padding = 2 },
      }

      -- Set component and section separators
      opts.options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      }
    end,
  },
}
