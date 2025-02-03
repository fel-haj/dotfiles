return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.ai').setup()
    require('mini.completion').setup()
    require('mini.files').setup({
      mappings = {
        go_in       = 'L',
        go_in_plus  = 'l',
        go_out      = 'H',
        go_out_plus = 'h',
      }
    })
    require('mini.pairs').setup()
    require('mini.surround').setup()

    vim.keymap.set('n', '<leader>m', function() MiniFiles.open() end, { desc = 'Open MiniFiles' })
  end
}
