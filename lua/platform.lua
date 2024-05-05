local M = {}

local platforms = { "wsl", "termux" }

for _, platform in ipairs(platforms) do
    M[platform] = vim.fn.has(platform) == 1
end

return M
