-- Keymap config for window-related commands. 
--
-- All window keymaps start with "<leader>w" for consistency. Some default mappings 
-- are left untouched, which means they're still mapped to "<C-w>". These untouched 
-- mappings are not currenly in active use, however, if any new default mappings come 
-- into play,they would be remapped to "<leader>w".

-- Unmap the listed keys from "<C-w>" keymaps. These mappings are remapped to 
-- different keys later in the config. Keys that aren't included in the list
-- stay mapped to "<C-w>".
local unmap = {
  -- split horizontally
  "s", "<C-s>", "S",

  -- split vertically
  "v", "<C-v>",

  -- switch windows
  "h", "j", "k", "l",

  -- rotate windows
  "r"
}
for _, key in ipairs(unmap) do
  vim.keymap.set("n", "<C-w>"..key, "<Nop>", {})
end

-- Map the listed keys to "<leader>w". These mappings match exactly match
-- their default counterparts except for the prefix (i.e. switching to
-- the window below is remapped from "<C-w>j" to "<leader>wj").
local wincmds = {
  h = "wincmd h",
  j = "wincmd j",
  k = "wincmd k",
  l = "wincmd l",
  r = "wincmd r",
}
for key, cmd in pairs(wincmds) do
  vim.keymap.set("n", "<leader>w"..key, "<Cmd>"..cmd.."<CR>", {})
end

-- Map "<leader>wsh" (stands for "window split horizontal") to split the currently
-- focused window horizontally.
vim.keymap.set(
  "n", 
  "<leader>wsh", 
  function()
    vim.api.nvim_open_win(0, true, {split="below", win=0})
  end,
  {}
)

-- Map "<leader>wsv" (stands for "window split vertical") to split the currently
-- focused window vertically.
vim.keymap.set(
  "n", 
  "<leader>wsv", 
  function()
    vim.api.nvim_open_win(0, true, {split="right", win=0, vertical=true})
  end,
  {}
)

