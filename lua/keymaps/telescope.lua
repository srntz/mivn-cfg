-- SET <leader>te - open fzf
vim.api.nvim_set_keymap("n", "<leader>te", ":Telescope find_files<CR>", {})

-- SET <leader>tu - open grep
vim.api.nvim_set_keymap("n", "<leader>tu", ":Telescope live_grep<CR>", {})

-- SET <leader>tb - buffer list
vim.api.nvim_set_keymap("n", "<leader>tt", ":Telescope buffers<CR>", {})
