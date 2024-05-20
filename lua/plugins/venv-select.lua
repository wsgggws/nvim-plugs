return {
	"linux-cultist/venv-selector.nvim",
	lazy = false,
	cmd = { "VenvSelect", "VenvSelectCached", "VenvSelectCurrent" },
	opts = function(_, opts)
		return vim.tbl_deep_extend("force", opts, {
			name = {
				"virtualenvs",
			},
			poetry_path = os.getenv("HOME") .. "/Library/Caches/pypoetry/virtualenvs",
			notify_user_on_activate = false,
		})
	end,
	keys = {
		{ "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
		{ "<leader>vs", "<cmd>VenvSelectCached<cr>", desc = "Cache VirtualEnv" },
		{ "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "Current VirtualEnv" },
	},
}
