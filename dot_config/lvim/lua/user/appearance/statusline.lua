local M = {}

local custom_theme = require('lualine.themes.gruvbox-baby');
custom_theme.terminal = custom_theme.insert

M.config = function()
  lvim.builtin.lualine.style         = "default"
  lvim.builtin.lualine.options.theme = custom_theme

  lvim.builtin.lualine.extensions    = {
    {
      sections = { lualine_a = { 'mode' } },
      filetypes = { 'toggleterm' },
    }
  }
end

return M
