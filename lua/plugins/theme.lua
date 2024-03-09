return {
	"Sly-Harvey/radium.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require('radium').setup {}
		vim.cmd.colorscheme "radium"
	end
}
