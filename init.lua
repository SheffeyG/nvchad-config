local opt = vim.opt
-- local autocmd = vim.api.nvim_create_autocmd

-------------------------------------- options ------------------------------------------
-- Indent
opt.ts = 4
opt.sw = 4
opt.tw = 0

-- Numbers
opt.relativenumber = true

-- Cursor
-- opt.guicursor = "i:block"

-------------------------------------- autocmds ------------------------------------------
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--     pattern = "*",
--     command = "tabdo wincmd =",
-- })

-- Auto close the last nvtree windows
-- autocmd( "QuitPre", {
--   callback = function() vim.cmd("NvimTreeClose") end,
-- })
