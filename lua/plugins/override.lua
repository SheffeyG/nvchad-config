return {

    -- LSP config
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                -- "lua-language-server", "stylua",
                -- "html-lsp", "css-lsp",
                -- "clangd",
                -- "clangd-format",
                "black",
                "isort",
                "pyright",
                "prettier",
            },
        },
    },

    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require("configs.conform")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "c",
                "css",
                "cpp",
                "html",
                "json",
                "python",
                "markdown",
            },
            auto_install = "true",
        },
    },
}
