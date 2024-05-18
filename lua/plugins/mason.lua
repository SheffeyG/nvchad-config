local mason_preinstall = {
    "black",
    "isort",
    "pyright",
    "prettier",
}

return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = mason_preinstall,
    },
}

