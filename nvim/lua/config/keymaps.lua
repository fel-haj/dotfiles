-- quit and save
vim.keymap.set('n', 'qq', ':q<enter>', {noremap=false})
vim.keymap.set('n', 'ss', ':w<enter>', {noremap=true})
-- buffers
vim.api.nvim_set_keymap("n", "<C-h>", ":bp<enter>", {noremap=false})
vim.api.nvim_set_keymap("n", "<C-l>", ":bn<enter>", {noremap=false})
vim.api.nvim_set_keymap("n", "<C-b>", ":bd<enter>", {noremap=false})
-- copy to clipboard
vim.keymap.set({'n', 'v'}, '<C-y>', '"+y', {noremap=true})
-- code-suggestions
vim.api.nvim_set_keymap('i', '<C-j>', '<CR>', { noremap = false })
vim.api.nvim_set_keymap('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]],   { noremap = true, expr = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { noremap = true, expr = true })
