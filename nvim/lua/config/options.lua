-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
vim.o.relativenumber = true

-- Disable mouse mode
vim.o.mouse = ''

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.cmd.colorscheme "catppuccin"

vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- make zsh files recognized as sh for bash-ls & treesitter
vim.filetype.add {
	extension = {
		zsh = "sh",
		sh = "sh",
	},
	filename = {
		[".zshrc"] = "sh",
		[".zshenv"] = "sh",
	},
}
