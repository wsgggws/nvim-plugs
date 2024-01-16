return {
	"TobinPalmer/rayso.nvim",
	cmd = { "Rayso" },
	opts = {
		options = {
			padding = 16,
			theme = "breeze",
		},
	},
	keys = {
		{
			"<leader>rs",
			"<cmd>lua require('lib.create').create_snippet()<cr>",
			mode = { "v" },
			desc = "Rayso create",
		},
	},
	config = true,
}
