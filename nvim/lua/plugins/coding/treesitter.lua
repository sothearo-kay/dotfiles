return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    -- config = function(_, opts)
    --   require("nvim-treesitter.configs").setup(opts)
    --   vim.treesitter.language.register("markdown", "mdx")
    --   vim.filetype.add({
    --     extension = {
    --       mdx = "markdown",
    --     },
    --   })
    -- end,
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "css",
        "gitignore",
        "http",
        "json",
        "vim",
        "lua",
        "html",
        "markdown",
        "markdown_inline",
      },
      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = true,
      highlight = {
        additional_vim_regex_highlighting = true,
        enable = true,
      },
    },
  },
}
