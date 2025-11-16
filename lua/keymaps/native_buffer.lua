-- SET <leader>bd: Close the current buffer
vim.api.nvim_set_keymap("n", "<leader>bd", ":bd<CR>", {})

-- SET <leader>bo: Close all buffers except the current one
vim.keymap.set(
  "n",
  "<leader>bo",
  function()
    local buf_ids = vim.api.nvim_list_bufs()
    local cur_buf_id = vim.api.nvim_win_get_buf(0)

    for _, value in pairs(buf_ids) do  
      if cur_buf_id ~= value then      
        vim.api.nvim_buf_delete(value, {})
      end
    end

    vim.notify("All buffers have been closed.")
  end,
  {}
)

-- SET <C-h>: Switch to the previous buffer
vim.api.nvim_set_keymap("n", "<C-h>", ":bprevious<CR>", {})

-- SET <C-l>: Switch to the next buffer
vim.api.nvim_set_keymap("n", "<C-l>", ":bnext<CR>", {})

