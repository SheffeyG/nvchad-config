-- local nvtree_devicons = require("nvim-web-devicons").get_icons()
-- local nvtree_devicons = require("nvim-web-devicons")
-- local nvtree_devicons = nvtree_devicons.get_icons()
local nvchad_devicons = require("nvchad.icons.devicons")
local override = {}

-- for name, data in pairs(require("nvim-web-devicons").get_icons()) do
--     local icon = data.icon
--     local pad = vim.api.nvim_strwidth(icon) == 1 and " " or ""
--     override[name] = vim.tbl_extend("force", data, { icon = icon .. pad })
-- end

for name, data in pairs(nvchad_devicons) do
    local icon = data.icon
    local pad = vim.api.nvim_strwidth(icon) == 1 and " " or ""
    override[name] = vim.tbl_extend("force", data, { icon = icon .. pad })
end

return {
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup({
                renderer = {
                    icons = {
                        -- padding = '',
                        padding = '\u{200A}',
                        symlink_arrow = '->',
                    }
                }
            })
        end,
    },

    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            -- dofile(vim.g.base46_cache .. "devicons")
            require("nvim-web-devicons").setup({ 
                override = override 
            })
        end,
    },
}
