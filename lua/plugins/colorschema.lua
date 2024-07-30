return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			flavour = "latte",
		},
	},
	{
		"folke/tokyonight.nvim",
		opts = {
			style = "day",
		},
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

	{
		"fynnfluegge/monet.nvim",
		name = "monet",
	},
	{
		"LazyVim/LazyVim",
		opts = function()
			local colorscheme = "gruvbox"
			-- local colorscheme = "tokyonight-day",
			-- local colorscheme = "catppuccin-mocha",
			-- local colorscheme = "gruvbox-material",
			-- local colorscheme = "monet",
			if os.getenv("TERM_PROGRAM") == "WezTerm" then
				colorscheme = "catppuccin"
			end
			return {
				colorscheme = colorscheme,
			}
		end,
	},
}
