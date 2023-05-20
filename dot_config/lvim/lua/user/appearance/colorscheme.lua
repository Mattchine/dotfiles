-- gruvbox-baby
local M = {}

M.config = function()
  vim.g.gruvbox_baby_background_color = "dark"
  vim.g.gruvbox_baby_telescope_theme = 1
  lvim.colorscheme = "gruvbox-baby"

  table.insert(lvim.plugins,
    {
      "luisiacc/gruvbox-baby",
    }
  )
end

return M
