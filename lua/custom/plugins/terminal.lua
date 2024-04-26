vim.keymap.set('n', '<M-t>', ':ToggleTerm direction=tab<CR>', { desc = 'Open tab term' })

return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<M-i>]],
      direction = 'float',
    },
  },
}
