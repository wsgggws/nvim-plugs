return {
	{ "catppuccin/nvim", name = "catppuccin", opts = { transparent_background = true } },
	{
		"HoNamDuong/hybrid.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
		},
	},
	{ "dracula/vim", name = "dracula" },
	{ "folke/tokyonight.nvim", opts = {
		transparent = true,
	} },
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
			-- colorscheme = "hybrid",
			-- colorscheme = "tokyonight-night",
		},
	},
}
