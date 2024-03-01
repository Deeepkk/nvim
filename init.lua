vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.g.tabstop = 2
vim.opt.number = true
vim.opt.cmdheight = 0
vim.opt.undofile = true
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'c', '"_c')
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.fillchars = { eob = " " }
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>')
vim.filetype.add({ extension = { templ = "templ" } })




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
