---@type MappingsTable
local M = {}

local opts = {
  nowait = true,
  silent = true,
  noremap = true
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = opts },
    ["<A-j>"] = { ":m .+1<CR>==", "move line down", opts=opts },
    ["<A-k>"] = { ":m .-2<CR>==", "move line up", opts=opts },
  },
  i = {
    ["<A-j>"] = { "<Esc>:m .+1<CR>==gi", "move line down", opts=opts },
    ["<A-k>"] = { "<Esc>:m .-2<CR>==gi", "move line up", opts=opts },
  },
  v = {
    [">"] = { ">gv", "tab line right", opts=opts},
    ["<"] = { "<gv", "tab line left", opts=opts},
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", "move line down", opts=opts },
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", "move line up", opts=opts },
  },
}

-- more keybinds!

return M
