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
      git_status = {
        symbols = {
          unstaged = 'y',
          modified = '',
        },
      },
      -- default_components_configs = {
      --   git_status = {
      --     symbols = {
      --       -- Change type
      --       added = '', -- or "✚", but this is redundant info if you use git_status_colors on the name
      --       modified = '', -- or "", but this is redundant info if you use git_status_colors on the name
      --       deleted = '✖', -- this can only be used in the git_status source
      --       renamed = '󰁕', -- this can only be used in the git_status source
      --       -- Status type
      --       untracked = '',
      --       ignored = '',
      --       unstaged = '',
      --       staged = '',
      --       conflict = '',
      --     },
      --   },
      -- },
    }
  end,
}
