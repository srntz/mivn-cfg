-- SET <leader>te - open fzf
vim.keymap.set("n", "<leader>te", "<Cmd>Telescope find_files<CR>", {})

-- SET <leader>tu - open grep
vim.keymap.set("n", "<leader>tu", "<Cmd>Telescope live_grep<CR>", {})

-- SET <leader>tb - buffer list
vim.keymap.set("n", "<leader>tt", "<Cmd>Telescope buffers<CR>", {})
