local M = {}

M.config = function()
  table.insert(
    lvim.plugins,
    {
      "windwp/nvim-spectre",
      event = "BufRead",
      config = function()
        vim.api.nvim_set_keymap('n', '<leader>sr', ':Spectre<cr>', { silent = true })
        require("spectre").setup()
      end,
    }
  )
end

return M
