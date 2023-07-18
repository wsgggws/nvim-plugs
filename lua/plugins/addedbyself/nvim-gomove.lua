return {
	"booperlv/nvim-gomove",
	config = function()
		require("gomove").setup({
			map_defaults = false,
			reindent = true,
			undojoin = true,
			move_past_end_col = false,
		})
	end,
}
