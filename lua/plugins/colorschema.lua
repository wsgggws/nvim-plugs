return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			transparent_background = true,
		},
	},
	{
		"folke/tokyonight.nvim",
	},
	{
		"ellisonleao/gruvbox.nvim",
		opts = {
			transparent_mode = true,
			contrast = "soft",
			invert_tabline = true,
			invert_selection = true,
			invert_intend_guides = true,
			overrides = {
				Normal = os.getenv("TERM_PROGRAM") == "WezTerm" and { fg = nil, bg = "#ebdbb2" }
					or { fg = "#ebdbb2", bg = nil },
			},
		},
	},
	-- {
	-- 	"sainnhe/gruvbox-material",
	-- },
	{
		"LazyVim/LazyVim",
		opts = {
			-- colorscheme = "tokyonight-day",
			-- colorscheme = "catppuccin-mocha",
			-- colorscheme = "gruvbox-material",
			colorscheme = "gruvbox",
		},
	},
}
