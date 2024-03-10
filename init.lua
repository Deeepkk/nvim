vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.g.tabstop = 2
vim.opt.number = true
vim.opt.undofile = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>')
-- words keymaps
vim.keymap.set('n', 'dw', 'daw')
vim.keymap.set('n', 'cw', 'ciw')
vim.keymap.set('n', 'yw', 'yiw')
-- move lines
vim.keymap.set('n', 'mj', '<cmd>m .+1<CR>')
vim.keymap.set('n', 'mk', '<cmd>m .-2<CR>')
-- pane navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
