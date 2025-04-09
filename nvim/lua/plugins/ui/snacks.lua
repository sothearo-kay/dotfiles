return {
  -- TODO: snacks.explorer configure shortcuts
  {
    "snacks.nvim",
    opts = {
      styles = {
        -- INFO: show top right of screen
        snacks_image = {
          relative = "editor",
          col = -1,
        },
      },
      image = {
        enabled = true,
        wo = {
          winhighlight = "FloatBorder:WhichKeyBorder",
        },
        doc = {
          inline = false,
          max_width = 45,
          max_height = 20,
        },
      },
      indent = {
        scope = {
          treesitter = {
            enabled = false,
          },
        },
      },
      scroll = {
        enabled = false,
      },
      picker = {
        --INFO: adds relativenumber to explorer
        -- sources = {
        --   explorer = {
        --     win = {
        --       list = {
        --         wo = {
        --           number = true,
        --           relativenumber = true,
        --         },
        --       },
        --     },
        --   },
        -- },
        -- matcher = {
        --   frecency = true,
        -- },
        layouts = {
          sidebar = {
            layout = {
              width = 30,
            },
          },
          default = {
            layout = {
              box = "horizontal",
              width = 0.8,
              min_width = 120,
              height = 0.8,
              {
                box = "vertical",
                border = "rounded",
                title = "{title} {live} {flags}",
                { win = "input", height = 1, border = "bottom" },
                { win = "list", border = "none" },
              },
              { win = "preview", title = "{preview}", border = "rounded", width = 0.60 },
            },
          },
        },
      },
      dashboard = {
        preset = {
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = "󱞁 ", key = "w", desc = "Obsidian Notes", action = ":ObsidianQuickSwitch" },
            { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
          header = [[
███████╗ ██████╗ ████████╗██╗  ██╗███████╗ █████╗ ██████╗  ██████╗ 
██╔════╝██╔═══██╗╚══██╔══╝██║  ██║██╔════╝██╔══██╗██╔══██╗██╔═══██╗
███████╗██║   ██║   ██║   ███████║█████╗  ███████║██████╔╝██║   ██║
╚════██║██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██║██╔══██╗██║   ██║
███████║╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║██║  ██║╚██████╔╝
╚══════╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ 
      ]],
        },
        sections = {
          { section = "header", padding = 1, align = "center" },
          { icon = " ", title = "Recent Files", section = "recent_files", limit = 4, padding = 1 },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}
