return {
	"lewis6991/gitsigns.nvim",
	config = function(_, _)
		require("gitsigns").setup({
			on_attach = function(bufnr)
				local gs = package.loaded.gitsigns

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				-- Actions
				map("n", "<leader>hb", function()
					gs.blame_line({ full = true })
				end, { desc = "blame_line" })
				map("n", "<leader>tb", gs.toggle_current_line_blame, { desc = "toggle_current_line_blame" })
				map("n", "<leader>hd", gs.diffthis, { desc = "diffthis" })
				map("n", "<leader>hD", function()
					gs.diffthis("~")
				end, { desc = "diff ~" })
			end,
		})
	end,
}
