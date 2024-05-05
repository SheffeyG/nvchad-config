local platform = require("platform")

local mason_preinstall = {
    "black",
    "isort",
    "pyright",
    "prettier",
}

-- pkgs doesn't supported in termux
if not platform.termux then
    table.insert(mason_preinstall, "clangd")
    table.insert(mason_preinstall, "stylua")
    table.insert(mason_preinstall, "lua-language-server")
end

return {

    -- LSP config
    {
        "neovim/nvim-lspconfig",
        config = function()
            if not platform.termux then
                require("nvchad.configs.lspconfig").defaults()
            end
            require("configs.lspconfig")
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = mason_preinstall,
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
