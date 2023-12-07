return {
	"j-morano/buffer_manager.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>bm",
			"<cmd>lua require('buffer_manager.ui').toggle_quick_menu()<CR>",
			desc = "Buffer manager menu",
		},
		{
			"<leader>bn",
			"<cmd>lua require('buffer_manager.ui').nav_next()<CR>",
			desc = "Buffer next",
		},
	},
}
