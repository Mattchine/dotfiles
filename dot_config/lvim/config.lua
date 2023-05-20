-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}

lvim.builtin.terminal.active = true
lvim.builtin.terminal.direction = 'horizontal'
lvim.builtin.terminal.size = 8
lvim.builtin.telescope = {
  active = true,
  defaults = {
    layout_strategy = "horizontal",
    path_display = { truncate = 2 }
  }
}
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

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

lvim.builtin.bufferline.options.show_buffer_close_icons = false

lvim.builtin.nvimtree.setup.view.side = "right"
-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- always installed on startup, useful for parsers without a strict filetype
lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/configuration/language-features/language-servers>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- linters, formatters and code actions <https://www.lunarvim.org/docs/configuration/language-features/linting-and-formatting>
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "stylua" },
--   {
--     command = "prettier",
--     extra_args = { "--print-width", "100" },
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }
-- local code_actions = require "lvim.lsp.null-ls.code_actions"
-- code_actions.setup {
--   {
--     exe = "eslint",
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
--

lvim.plugins = {
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      vim.api.nvim_set_keymap('n', '<leader>sr', ':Spectre<cr>', { silent = true })
      require("spectre").setup()
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  },
  {
    'mrjones2014/smart-splits.nvim',
    config = function()
      -- recommended mappings
      -- resizing splits
      -- these keymaps will also accept a range,
      -- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
      -- vim.api.nvim_set_keymap('n', '<A-h>', ":SmartResizeLeft<cr>", { silent = true })
      -- vim.api.nvim_set_keymap('n', '<A-j>', ":SmartResizeDown<cr>", { silent = true })
      -- vim.api.nvim_set_keymap('n', '<A-k>', ":SmartResizeUp<cr>", { silent = true })
      -- vim.api.nvim_set_keymap('n', '<A-l>', ":SmartResizeRight<cr>", { silent = true })
      -- moving between splits
      vim.api.nvim_set_keymap('n', '<C-h>', ":SmartCursorMoveLeft<cr>", { silent = true })
      vim.api.nvim_set_keymap('n', '<C-j>', ":SmartCursorMoveDown<cr>", { silent = true })
      vim.api.nvim_set_keymap('n', '<C-k>', ":SmartCursorMoveUp<cr>", { silent = true })
      vim.api.nvim_set_keymap('n', '<C-l>', ":SmartCursorMoveRight<cr>", { silent = true })
    end
  },
  {
    "ggandor/leap.nvim",
    name = "leap",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
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

require('user.options').config()
require('user.keybindings').config()

require('user.plugins.lsp_signature').config()
require('user.plugins.vim-surround').config()

require('user.appearance.colorscheme').config()
require('user.appearance.statusline').config()
