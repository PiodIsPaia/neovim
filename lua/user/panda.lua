local function update_panda_cursor()
    local row, col = vim.api.nvim_win_get_cursor(0)[1], vim.api.nvim_win_get_cursor(0)[2]
    local namespace_id = vim.api.nvim_create_namespace("panda_cursor")
    vim.api.nvim_buf_clear_namespace(0, namespace_id, 0, -1)

    vim.api.nvim_buf_set_extmark(0, namespace_id, row - 1, col, {
      virt_text = { { "🐼", "PandaCursor" } },
      virt_text_pos = "overlay",
      hl_mode = "combine",
    })
end

vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
    callback = update_panda_cursor,
})

vim.api.nvim_set_hl(0, "PandaCursor", { fg = "#ffffff", bg = "#000000", bold = true })
