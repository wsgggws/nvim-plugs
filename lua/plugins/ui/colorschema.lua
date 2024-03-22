return {
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "dracula/vim", name = "dracula" },
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
			-- colorscheme = "gruvbox",
			colorscheme = "catppuccin-mocha",
			-- colorscheme = "tokyonight-night",
		},
	},
}
