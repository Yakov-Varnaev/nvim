vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text = '🧐', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text = '❌', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
vim.fn.sign_define('DapLogPoint', { text = '🔵', texthl = 'DapLogPoint', linehl = 'DapLogPoint', numhl = 'DapLogPoint' })
vim.fn.sign_define('DapStopped', { text = '➡️', texthl = 'DapStopped', linehl = 'DapStopped', numhl = 'DapStopped' })

return {
  {
    'mfussenegger/nvim-dap',
    -- after = "coq_nvim",
    lazy = false,
    requires = {
      'Pocco81/DAPInstall.nvim',
    },
  },
  {
    'rcarriga/nvim-dap-ui',
    requires = { 'mfussenegger/nvim-dap' },
    opts = {
      floating = { border = 'rounded' },
      layouts = {
        {
          elements = {
            {
              id = 'scopes',
              size = 0.5,
            },
            {
              id = 'watches',
              size = 0.5,
            },
          },
          position = 'bottom',
          size = 10,
        },
        {
          elements = {
            {
              id = 'repl',
              size = 0.25,
            },
            {
              id = 'breakpoints',
              size = 0.25,
            },
            {
              id = 'stacks',
              size = 0.25,
            },
          },
          position = 'left',
          size = 40,
        },
      },
    },
    lazy = false,
    config = function(_, opts)
      local dap, dapui = require 'dap', require 'dapui'
      dap.listeners.after.event_initialized['dapui_config'] = function()
        -- close neotree as it is useless while debugging
        vim.api.nvim_command ':Neotree close'
        dapui.open()
      end
      dap.listeners.before.event_terminated['dapui_config'] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited['dapui_config'] = function()
        dapui.close()
      end
      dapui.setup(opts)
    end,
  },
  {
    'Pocco81/DAPInstall.nvim',
    lazy = false,
  },
  {
    'mfussenegger/nvim-dap-python',
    ft = 'python',
    dependencies = {
      'mfussenegger/nvim-dap',
    },
    config = function(_, _)
      local path = '~/.local/share/nvim/mason/packages/debugpy/venv/bin/python'
      require('dap-python').setup(path)
    end,
  },
  {
    'leoluz/nvim-dap-go',
    ft = 'go',
    dependencies = 'mfussenegger/nvim-dap',
    config = function(_, opts)
      vim.keymap.set('n', '<leader>td', function()
        require('dap-go').debug_test()
      end, { desc = 'Debug test' })
      require('dap-go').setup()
    end,
  },
}
