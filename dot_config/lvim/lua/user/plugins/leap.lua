local M = {}

M.config = function()
  table.insert(
    lvim.plugins,
    {
      "ggandor/leap.nvim",
      name = "leap",
      config = function()
        require("leap").add_default_mappings()
      end,
    }
  )
end

return M
