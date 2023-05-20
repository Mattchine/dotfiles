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
    { name = "prettier",   filetypes = { "typescript", "typescriptreact" }, },
    { command = "rustfmt", filetypes = { "rust" } },
  }
end

return M
