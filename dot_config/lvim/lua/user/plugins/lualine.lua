-- https://github.com/nvim-lualine/lualine.nvim/blob/master/lua/lualine/extensions/toggleterm.lua
-- Improve original extension

local M = {}

M.sections = {
  lualine_a = { 'mode' },
}

M.filetypes = { 'toggleterm' }
return M
