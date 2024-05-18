local servers = { "clangd", "pyright" }

local lspconfig = require("lspconfig")
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

return {
    "neovim/nvim-lspconfig",
    config = function()
        if vim.fn.has("termux") ~= 1 then
            require("nvchad.configs.lspconfig").defaults()
        end
        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup({
                on_attach = on_attach,
                on_init = on_init,
                capabilities = capabilities,
            })
        end
    end,
}
