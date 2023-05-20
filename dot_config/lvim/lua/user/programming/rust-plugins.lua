local M = {}

M.config = function()
  table.insert(
    lvim.plugins,
    "simrat39/rust-tools.nvim"
  )

  table.insert(
    lvim.plugins,

    {
      "saecki/crates.nvim",
      version = "v0.3.0",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        require("crates").setup {
          null_ls = {
            enabled = true,
            name = "crates.nvim",
          },
          popup = {
            border = "rounded",
          },
        }
      end,
    }
  )

  table.insert(
    lvim.plugins,
    {
      "j-hui/fidget.nvim",
      config = function()
        require("fidget").setup()
      end,
    }
  )
end

return M
