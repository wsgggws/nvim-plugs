return {
	"mvllow/modes.nvim",
	tag = "v0.2.1",
	config = function()
		require("modes").setup({
			ignore_filetypes = { "NvimTree", "TelescopePrompt", "dashboard" },
		})
	end,
}
