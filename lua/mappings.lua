require "nvchad.mappings"


local map = vim.keymap.set

-- NORMAL
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })
-- map("n", "<S-u>", "<C-r>", { desc = "General Redo" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- map("i", "jk", "<ESC>")

-- LINE MOVE
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- TERMINAL
local function close_terminal()
    local win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_close(win, true)
end

map("t", "jk", close_terminal, { desc = "Terminal Close terminal" })
map("t", "<ESC>", close_terminal, { desc = "Terminal Close terminal" })
-- map("n", "<leader>h", function()
--     require("nvchad.term").new { pos = "sp", size = 0.5 }
-- end, { desc = "Terminal New horizontal terminal" })
