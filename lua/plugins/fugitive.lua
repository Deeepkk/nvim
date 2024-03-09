return {
	"tpope/vim-fugitive",
	config = function ()
	vim.keymap.set('n', '<leader>gs', '<cmd>Git<CR>')
	vim.keymap.set('n', '<leader>ga', '<cmd>Git add -A<CR>')
	vim.keymap.set('n', '<leader>gc', '<cmd>Git commit<CR>')
	vim.keymap.set('n', '<leader>gp', '<cmd>Git push<CR>')
	vim.keymap.set('n', '<leader>gl', '<cmd>Git pull<CR>')
	end
}
