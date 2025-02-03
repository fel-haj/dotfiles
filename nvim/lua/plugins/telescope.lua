return {
  { 'nvim-telescope/telescope-symbols.nvim' },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup ({
        defaults = {
          layout_strategy = 'horizontal',
          layout_config = {
            preview_width = 0.5,
            horizontal = {
              size = {
                width ='0.95',
                height = '0.95',
              },
            },
          },
          mappings = {
            i = {
              ['<C-d>'] = false,
              ['<C-j>'] = 'move_selection_next',
              ['<C-k>'] = 'move_selection_previous',
            },
          },
        },
      })

      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end,
  }
}
