return {
  "nvim-mini/mini.nvim", 
  version = false,
  -- require all needed sub-plugins
  config = function()
    require("mini.icons").setup()
    require("mini.pairs").setup()
    require("mini.surround").setup({
      custom_surroundings = {
        ['('] = {output = {left = '(', right = ')'}},
        ['['] = {output = {left = '[', right = ']'}},
        ['{'] = {output = {left = '{', right = '}'}},
        ['<'] = {output = {left = '<', right = '>'}},
      }
    })
  end
}
