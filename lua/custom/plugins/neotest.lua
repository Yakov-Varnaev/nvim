return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function(_, _)
      -- There is a warning for some reason, but looks like it can be ignored
      require('neotest').setup {
        adapters = {
          require 'neotest-python' {
            dap = { justMyCode = true },
          },
          require 'neotest-go' {
            dap = { justMyCode = true },
          },
        },
      }
    end,
  },
  {
    'nvim-neotest/neotest-python',
    ft = 'python',
    requires = {
      'nvim-neotest/neotest',
    },
    dependencies = {
      'nvim-neotest/neotest',
    },
  },
  {
    'nvim-neotest/neotest-go',
    ft = 'go',
    requires = {
      'nvim-neotest/neotest',
    },
    dependencies = {
      'nvim-neotest/neotest',
    },
  },
}
