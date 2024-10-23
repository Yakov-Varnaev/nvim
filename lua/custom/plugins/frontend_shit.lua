local vue_ls_path = '/Users/yakovvarnaev/.local/share/nvim/mason/packages/vue-language-server'

return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {
      filetypes = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        -- 'vue',
      },
      -- tsserver_plugins = {
      --   '@styled/typescript-styled-plugin',
      --   '@vue/language-server',
      --   '@vue/typescript-plugin',
      -- },
    },
  },
}
