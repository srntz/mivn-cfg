local function path(rel)
  return "keymaps." .. rel
end

require(path("global"))
require(path("native_buffer"))
require(path("native_window"))
require(path("oil"))
require(path("telescope"))
