return {
	"LintaoAmons/scratch.nvim",
	event = "VimEnter",
	keys = {
		{ "<leader>nn", "<cmd>Scratch<cr>", desc = "Scratch" },
		{ "<leader>nN", "<cmd>ScratchWithName<cr>", desc = "ScratchWithName" },
		{ "<leader>no", "<cmd>ScratchOpen<cr>", desc = "ScratchOpen" },
		{ "<leader>nf", "<cmd>ScratchOpenFzf<cr>", desc = "ScratchOpenFzf" },
		{ "<leader>ne", "<cmd>ScratchEditConfig<cr>", desc = "ScratchEditConfig" },
	},
}
