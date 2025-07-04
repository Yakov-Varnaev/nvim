return {
  {
    'crnvl96/lazydocker.nvim',
    opts = {
      window = {
        settings = {
          width = 0.9, -- Percentage of screen width (0 to 1)
          height = 0.9, -- Percentage of screen height (0 to 1)
          border = 'rounded', -- See ':h nvim_open_win' border options
        },
      },
    },
    keys = {
      { '<leader>ld', '<cmd>lua LazyDocker.toggle()<cr>', desc = 'Lazy Docker' },
    },
  },
}
