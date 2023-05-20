local M = {}

M.config = function()
  table.insert(
    lvim.plugins,
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
    }
  )
end

return M
