local M = {}

M.config = function()
  -- vim options
  vim.opt.shiftwidth = 2
  vim.opt.tabstop = 2
  vim.opt.relativenumber = true

  -- fold
  vim.opt.foldmethod = "expr"
  vim.opt.foldenable = false
  vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
  vim.cmd(
    [[
    augroup remember_folds
      autocmd!
      autocmd BufWinLeave *.* mkview
      autocmd BufWinEnter *.* silent! loadview
    augroup END
  ]]
  )
end

return M
