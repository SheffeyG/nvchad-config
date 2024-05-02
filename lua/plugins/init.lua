return {

  -- LSP stuff
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			-- "lua-language-server", "stylua",
  			-- "html-lsp", "css-lsp",
        "prettier",
        "pyright"
        -- "clangd", 
  		},
  	},
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  -- Custom plugins
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
}
