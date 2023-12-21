---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<A-j>"] = { "mz:m+<cr>`z", "move line down" },
    ["<A-k>"] = { "mz:m-2<cr>`z", "move line up" },
  },
  v = {
    [">"] = { ">gv", "indent"},
    ["<A-j>"] = { ":m'>+<cr>`<my`>mzgv`yo`z", "move line down" },
    ["<A-k>"] = { ":m'<-2<cr>`<my`>mzgv`yo`z", "move line up" },
  },
}

-- more keybinds!

return M
