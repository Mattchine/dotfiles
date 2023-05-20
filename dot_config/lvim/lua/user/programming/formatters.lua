local M = {}

M.config = function()
  lvim.format_on_save = {
    enabled = true,
    pattern = "*.lua",
    timeout = 1000,
  }

  -- prettier
  local formatters = require "lvim.lsp.null-ls.formatters"
  formatters.setup {
    { name = "black" },
    {
      name = "prettier",
      ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
      -- filetypes = { "typescript", "typescriptreact" },
    },
  }
end

return M
