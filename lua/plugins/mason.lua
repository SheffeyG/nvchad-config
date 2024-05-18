local mason_preinstall = {
    "black",
    "isort",
    "pyright",
    "prettier",
}

-- pkgs doesn't supported in termux
local platform = require("platform")
if not platform.termux then
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

