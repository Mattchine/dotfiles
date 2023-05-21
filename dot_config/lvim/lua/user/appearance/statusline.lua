local M = {}

M.config = function()
  lvim.builtin.lualine.style         = "default"
  lvim.builtin.lualine.options.theme = "gruvbox-baby"

  lvim.builtin.lualine.extensions    = {
    {
      sections = { lualine_a = { 'mode' } },
      filetypes = { 'toggleterm' },
    }
  }
end

return M
