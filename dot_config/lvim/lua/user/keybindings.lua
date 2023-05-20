-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
local M = {}

M.config = function()
  lvim.leader = "space"

  -- vertical split 2 buffers
  lvim.keys.normal_mode["<leader>v"] = ":vert sball<cr>"

  -- terminal
  lvim.keys.term_mode["<esc>"] = "<C-\\><C-n>"
  lvim.builtin.terminal.open_mapping = '<C-t>'

  -- Use which-key to add extra bindings with the leader-key prefix
  -- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
  lvim.builtin.which_key.mappings["p"] = { "<cmd>Telescope projects<CR>", "Projects" }
  lvim.builtin.which_key.mappings["P"] = {
    name = "Plugins",
    i = { "<cmd>Lazy install<cr>", "Install" },
    s = { "<cmd>Lazy sync<cr>", "Sync" },
    S = { "<cmd>Lazy clear<cr>", "Status" },
    u = { "<cmd>Lazy update<cr>", "Update" },
  }

  -- Show previewer when searching git files with default <leader>f
  lvim.builtin.which_key.mappings["f"] = {
    require("lvim.core.telescope.custom-finders").find_project_files,
    "Find File"
  }

  -- Show previewer when searching buffers with <leader>bf
  lvim.builtin.which_key.mappings.b.f = {
    "<cmd>Telescope buffers<cr>",
    "Find"
  }
end

return M
