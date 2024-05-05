local autocmd = vim.api.nvim_create_autocmd

autocmd({ "BufLeave" }, {
    pattern = "*",
    callback = function()
        -- if vim.api.nvim_buf_get_option(0, "modified") then
        if vim.api.nvim_get_option_value("modified", {}) then
            vim.cmd("write")
        end
    end,
})

autocmd({ "QuitPre" }, {
    callback = function()
        vim.cmd("NvimTreeClose")
    end,
})
