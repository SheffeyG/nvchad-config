if vim.fn.has("termux") ~= 1 then
    return {
        -- "nvim-tree/nvim-tree.lua",
        -- config = function()
        --     require("nvim-tree").setup({
        --         renderer = {
        --             icons = {
        --                 git_placement = "after",
        --                 -- padding = "",
        --                 symlink_arrow = " ➜ ",
        --             }
        --         }
        --     })
        -- end
    }
end

-- Fix termux nvtree icons
local nvtree_devicons = require("nvim-web-devicons").get_icons()
local nvchad_devicons = require("nvchad.icons.devicons")
local override = {}

for name, data in pairs(nvtree_devicons) do
    local icon = data.icon
    local pad = vim.api.nvim_strwidth(icon) == 1 and " " or ""
    override[name] = vim.tbl_extend("force", data, { icon = icon .. pad })
end

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
                        git_placement = "after",
                        padding = "",
                        symlink_arrow = " ➜ ",
                        glyphs = {
                            default = " ",
                            symlink = " ",
                            bookmark = "󰆤 ",
                            modified = "●",
                            folder = {
                                arrow_closed = "",
                                arrow_open = "",
                                default = " ",
                                open = " ",
                                empty = " ",
                                empty_open = " ",
                                symlink = " ",
                                symlink_open = " ",
                            },
                            git = {
                                unstaged = "✗",
                                staged = "✓",
                                unmerged = "",
                                renamed = "➜",
                                untracked = "+",
                                deleted = "-",
                                ignored = "◌",
                            },
                        },
                    },
                },
            })
        end,
    },

    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            dofile(vim.g.base46_cache .. "devicons")
            require("nvim-web-devicons").setup({
                override = override,
            })
        end,
    },
}
