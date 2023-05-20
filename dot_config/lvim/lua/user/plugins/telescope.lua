local M = {}

M.config = function()
  lvim.builtin.telescope = {
    active = true,
    defaults = {
      layout_strategy = "horizontal",
      path_display = { truncate = 2 }
    }
  }
end

return M
