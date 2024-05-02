local options = {
  formatters_by_ft = {
    c = { "clangd" },
    cpp = { "clangd" },
    css = { "prettier" },
    javascript = { "prettier" },
    html = { "prettier" },
    lua = { "stylua" },
    markdown = { "prettier" },
    python = { "isort", "black" },
    typescript = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },

  -- formatters = {
  --   clangdf = {
  --     command = { "clangd-format" },
  --     -- args = { "-style=\"{UseTab: Never, IndentWidth: 4, TabWidth: 4}\"" },
  --   },
  -- },
}

require("conform").setup(options)
