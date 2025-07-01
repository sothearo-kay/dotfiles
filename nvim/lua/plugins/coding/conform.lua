return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        javascript = function(bufnr)
          if require("conform").get_formatter_info("prettier", bufnr).available then
            return { "prettier" }
          end
          return {}
        end,
        javascriptreact = function(bufnr)
          if require("conform").get_formatter_info("prettier", bufnr).available then
            return { "prettier" }
          end
          return {}
        end,
        typescript = function(bufnr)
          if require("conform").get_formatter_info("prettier", bufnr).available then
            return { "prettier" }
          end
          return {}
        end,
        typescriptreact = function(bufnr)
          if require("conform").get_formatter_info("prettier", bufnr).available then
            return { "prettier" }
          end
          return {}
        end,
        vue = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        less = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        ["markdown.mdx"] = { "prettier" },
        graphql = { "prettier" },
        handlebars = { "prettier" },
        python = { "black" },
      },
      formatters = {
        prettier = {
          require_cwd = true,
        },
      },
    },
  },
}
