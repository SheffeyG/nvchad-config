local options = {
  formatters_by_ft = {
    c = { "clang_fmt" },
    cpp = { "clang_fmt" },
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
}

require("conform").formatters.clang_fmt = vim.deepcopy(require("conform.formatters.clang-format"))
require("conform").formatters.clang_fmt.prepend_args = {'-style="{IndentWidth: 4}"'}

require("conform").setup(options)
