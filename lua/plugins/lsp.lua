return {
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = require('cmp_nvim_lsp').default_capabilities()
					})
				end,
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, {})
			vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
			vim.keymap.set('n', '<leader>f', function()
				vim.lsp.buf.format { async = true }
			end, {})
		end
	},
}
