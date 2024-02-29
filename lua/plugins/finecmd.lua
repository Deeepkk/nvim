return {
	"VonHeikemen/fine-cmdline.nvim",
	dependencies = {
'MunifTanjim/nui.nvim',
		},
	config = function()
		require("fine-cmdline").setup({
		win_options = {
      winhighlight = 'Normal:Normal',
    },
		})
		vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
	end,

}
