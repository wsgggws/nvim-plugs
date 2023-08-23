return {
	-- markdown support
	{ "godlygeek/tabular" }, -- required by vim-markdown
	{ "plasticboy/vim-markdown" },
	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"mzlogin/vim-markdown-toc",
	},
}
