return {
  -- Mason: Ensure LSP servers and formatters are installed
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = {
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
        "vue-language-server",
        "prettier", -- Ensure Prettier is installed for conform
      }
    end,
  },

  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim", "hrsh7th/cmp-nvim-lsp" }, -- Mason-LSPConfig integration
    config = function()
      local lspconfig = require("lspconfig")

      -- Capabilities including nvim-cmp (assumes it's set up in another file)
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- HTML LSP
      lspconfig.html.setup({
        capabilities = capabilities,
      })

      -- CSS LSP
      lspconfig.cssls.setup({
        capabilities = capabilities,
      })

      -- TypeScript/JavaScript LSP
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        on_attach = function(client)
          -- Disable built-in formatting in tsserver, use Prettier instead
          client.server_capabilities.documentFormattingProvider = false
        end,
      })

      -- Vue.js LSP
      lspconfig.vuels.setup({
        capabilities = capabilities,
        on_attach = function(client)
          -- Disable built-in formatting in VLS, use Prettier instead
          client.server_capabilities.documentFormattingProvider = false
        end,
      })
    end,
  }
}
