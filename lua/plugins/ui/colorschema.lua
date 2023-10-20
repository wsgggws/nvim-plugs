return {
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "dracula/vim", name = "dracula" },
	{ "tanvirtin/monokai.nvim" },
	{ "folke/tokyonight.nvim" },
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
	{
		"LazyVim/LazyVim",
		opts = {
			-- colorscheme = "catppuccin-mocha",
			-- colorscheme = "koehler",
			-- colorscheme = "monokai_ristretto",
			-- colorscheme = "gruvbox",
			-- colorscheme = "catppuccin-latte",
			colorscheme = "tokyonight-day",
		},
	},
}
