return {
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "dracula/vim", name = "dracula" },
	{ "tanvirtin/monokai.nvim" },
	{ "folke/tokyonight.nvim" },
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = {
			contrast = "soft",
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			-- colorscheme = "dracula",
			-- colorscheme = "catppuccin-mocha",
			-- colorscheme = "peachpuff",
			-- colorscheme = "koehler",
			-- colorscheme = "monokai_ristretto",
			-- colorscheme = "gruvbox",
			-- colorscheme = "catppuccin-latte",
			-- colorscheme = "tokyonight-day",
			colorscheme = "tokyonight-night",
		},
	},
}
