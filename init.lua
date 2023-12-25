local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd

-------------------------------------- options ------------------------------------------
-- Indent
opt.tabstop = 4
opt.softtabstop = 4

-- Numbers
opt.relativenumber = true

-------------------------------------- autocmds ------------------------------------------
-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
    pattern = "*",
    command = "tabdo wincmd =",
})
