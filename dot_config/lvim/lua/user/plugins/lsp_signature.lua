local M = {}

M.config = function()
  table.insert(
    lvim.plugins,
    {
      "ray-x/lsp_signature.nvim",
      config = function()
        require "lsp_signature".setup({})
      end,
    }
  )

  -- https://github.com/ray-x/lsp_signature.nvim/issues/202#issuecomment-1190525409
  lvim.lsp.on_attach_callback = function(client, bufnr)
    require "lsp_signature".on_attach()
  end
end

return M
