-- SET timeout between keypresses for key mappings
vim.o.timeoutlen = 350

-- SET tab to insert 2 spaces instead of \t
vim.o.expandtab = true
vim.o.shiftwidth = 2

-- SET line numbers relative to the current line. The current line will show the absolute number.
vim.o.number = true
vim.o.relativenumber = true

-- use the default system clipboard for copying and pasting
vim.o.clipboard = "unnamedplus"

-- make sure long lines don't get wrapped
vim.o.wrap = false
