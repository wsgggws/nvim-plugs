return {
	"AgusDOLARD/backout.nvim",
	opts = {},
	keys = {
		-- Define your keybinds
		{ "<c-b>", "<cmd>lua require('backout').back()<cr>", mode = { "i" } },
		{ "<c-u>", "<cmd>lua require('backout').out()<cr>", mode = { "i" } },
	},
}
