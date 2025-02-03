return {
  { 'nvim-treesitter/nvim-treesitter-textobjects' },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
          'bash',
          'css',
          'go',
          'html',
          'javascript',
          'json',
          'jsonc',
          'lua',
          'nix',
          'python',
          'toml',
          'tsx',
          'typescript',
          'xml',
          'yaml',
        },
      })
    end,
  },
}
