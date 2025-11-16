-- SET <leader>wh: Split current window horizontally
vim.keymap.set(
  "n", 
  "<leader>wh", 
  function()
    vim.api.nvim_open_win(0, true, {split="below", win=0})
  end,
  {}
)

-- SET <leader>wv: Split current window vertically 
vim.keymap.set(
  "n", 
  "<leader>wv", 
  function()
    vim.api.nvim_open_win(0, true, {split="right", win=0, vertical=true})
  end,
  {}
)

