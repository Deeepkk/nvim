return {
	{
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/nvim-cmp',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		"rafamadriz/friendly-snippets",
	},
	{
		"L3MOn4D3/Luasnip",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
	{
		"github/copilot.vim",
		config = function()
			vim.g.copilot_autostart = 1
			vim.g.copilot_no_tab_map = true
			vim.g.copilot_assume_mapped = true
			vim.api.nvim_set_keymap("i", "<C-.>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
		end,

	},
	{
		'hrsh7th/nvim-cmp',
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
					["<S-tab>"] = cmp.mapping.select_prev_item({
						behavior = cmp.SelectBehavior
						    .Insert
					}),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = {
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
					{ name = "path" },
				},
			})
		end,
	},

}
