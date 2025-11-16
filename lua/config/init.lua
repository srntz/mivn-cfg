local function path(rel)
  return "config." .. rel
end

require(path("global"))
require(path("lazy"))
require(path("lsp"))

vim.cmd("colorscheme kanagawa")
