return {
	"chrisgrieser/nvim-spider",
	keys = {
		{ -- example for lazy-loading and keymap
			"e",
			"<cmd>lua require('spider').motion('e')<CR>",
			mode = { "n", "o", "x" },
		},
	},
}
