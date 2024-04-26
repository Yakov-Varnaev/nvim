return {
  {
    'folke/zen-mode.nvim',
    event = 'VimEnter',
  },
  {
    'f-person/git-blame.nvim',
    branch = 'feat/clear-virtual-text-immediately-on-cursor-move',
    event = 'BufRead',
  },
  {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup {}
    end,
  },
}
