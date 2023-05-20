local M = {}

M.config = function()
  lvim.builtin.terminal.active = true
  lvim.builtin.terminal.direction = 'horizontal'
  lvim.builtin.terminal.size = 8
end

return M
