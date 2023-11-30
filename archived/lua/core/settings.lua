vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true

vim.o.cursorline = true
vim.cmd.colorscheme "catppuccin-mocha"
-- vim.cmd.colorscheme "gruvbox"
vim.o.background = "dark"
-- use system clipboard to copy
vim.opt.clipboard:append("unnamedplus") 
