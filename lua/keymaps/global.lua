vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
	
-- INSERT "jj" - switch INSERT to NORMAL 
vim.keymap.set("i", "jj", "<Esc>", {noremap=true})

-- NORMAL "<C-s>" - save the current buffer
vim.keymap.set(
  "n", 
  "<C-s>", 
  function() 
    local cur_buf = vim.api.nvim_get_current_buf()
    if vim.bo[cur_buf].modified == true then       
      vim.cmd("w")
    else
      print("No changes detected in the current buffer. Nothing to save.")
    end
  end, 
  {silent=true}
)

-- VISUAL ">" - indent by 1 shiftwidth and retain the selection
vim.keymap.set("v", ">", ">gv$", {noremap=true})

-- VISUAL "<" - unindent by 1 shiftwidth and retain the selection
vim.keymap.set("v", "<", "<gv$", {noremap=true})
