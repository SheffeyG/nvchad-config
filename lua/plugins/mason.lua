local mason_preinstall = {
    "black",
    "isort",
    "pyright",
    "prettier",
}

-- pkgs doesn't supported in termux
if vim.fn.has("termux") ~= 1 then
    table.insert(mason_preinstall, "clangd")
    table.insert(mason_preinstall, "stylua")
    table.insert(mason_preinstall, "lua-language-server")
end

return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = mason_preinstall,
    },
}

