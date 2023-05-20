-- general
lvim.log.level = "info"

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- always installed on startup, useful for parsers without a strict filetype
lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex", "rust", "toml" }

require('user.appearance.bufferline').config()
require('user.appearance.colorscheme').config()
require('user.appearance.dashboard').config()
require('user.appearance.statusline').config()

require('user.keybindings').config()

require('user.options').config()

require('user.plugins.leap').config()
require('user.plugins.lsp_signature').config()
require('user.plugins.nvim-bqf').config()
require('user.plugins.nvim-spectre').config()
require('user.plugins.nvim-surround').config()
require('user.plugins.nvim-tree').config()
require('user.plugins.smart-splits').config()
require('user.plugins.telescope').config()
require('user.plugins.toggleterm').config()

require('user.programming.formatters').config()
require('user.programming.rust').config()
require('user.programming.rust-plugins').config()
