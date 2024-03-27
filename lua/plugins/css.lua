return {
	-- HEX & Other Color Highlighting
	{
		'NvChad/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup({
				user_default_options = {
					tailwind = true
				}
			})
		end
	},
	-- TailwindCSS Highlighting
	{
		"roobert/tailwindcss-colorizer-cmp.nvim",
		config = function()
			require("tailwindcss-colorizer-cmp").setup({
				color_square_width = 2,
			})
			require("cmp").setup = {
				formatting = {
					format = require("tailwindcss-colorizer-cmp").formatter
				}
			}
		end
	},
}
