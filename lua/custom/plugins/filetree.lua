return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    vim.keymap.set('n', '<leader>o', '<cmd>Neotree focus<CR>', { desc = 'Focus Neotree' })
    vim.keymap.set('n', '<leader>p', '<cmd>Neotree toggle<CR>', { desc = 'Toggle Neotree' })
    vim.keymap.set('n', '<leader>gs', '<cmd>Neotree float git_status<CR>', { desc = 'Git' })
    vim.keymap.set('n', 'gd', '<cmd>DiffviewOpen<cr>', { desc = 'Open Git diff' })

    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
      },
    }
  end,
}
