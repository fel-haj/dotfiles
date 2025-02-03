return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        icons_enabled = true,
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        lualine_b = {'branch'},
        lualine_c = {'buffers'},
        lualine_x = { "encoding", { "fileformat", symbols = { unix = "" } }, "filetype" },
      },
    },
  },
}
