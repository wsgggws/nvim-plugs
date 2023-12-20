return {
	"tamton-aquib/duck.nvim",
	config = function()
		vim.keymap.set("n", "<leader>dD", function()
			require("duck").hatch()
		end, {})
		vim.keymap.set("n", "<leader>dK", function()
			require("duck").cook()
		end, {})
	end,
}
