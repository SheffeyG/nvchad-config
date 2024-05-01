require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

map("n", "<A-j>", ":m .+1<CR>==", { desc = "move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "move line up" })
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "move line down" })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "move line down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "move line up" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
