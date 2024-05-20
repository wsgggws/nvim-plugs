return {
	"LintaoAmons/scratch.nvim",
	event = "VimEnter",
	keys = {
		{ "<leader>hn", "<cmd>Scratch<cr>", desc = "Scratch" },
		{ "<leader>hN", "<cmd>ScratchWithName<cr>", desc = "ScratchWithName" },
		{ "<leader>ho", "<cmd>ScratchOpen<cr>", desc = "ScratchOpen" },
		{ "<leader>hf", "<cmd>ScratchOpenFzf<cr>", desc = "ScratchOpenFzf" },
		{ "<leader>he", "<cmd>ScratchEditConfig<cr>", desc = "ScratchEditConfig" },
	},
}
