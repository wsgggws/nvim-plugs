return {
	{
		"nvim-telescope/telescope.nvim",
		-- install fzf native
		dependencies = {
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			config = function()
				require("telescope").load_extension("fzf")
			end,
		},
		keys = {
			-- change a keymap
			{ "<C-p>", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
			-- add a keymap to browse plugin files
			{
				"<leader>fp",
				function()
					require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
				end,
				desc = "Find Plugin File",
			},
			{
				"<leader>fw",
				"<cmd>Telescope grep_string<CR>",
				desc = "Find Cursor Word",
			},
			{
				"<leader>fs",
				"<cmd>Telescope live_grep<CR>",
				desc = "Find Live Grep",
			},
		},
	},
	{
		"telescope.nvim",
		-- enable telescope project
		dependencies = {
			"nvim-telescope/telescope-project.nvim",
			config = function()
				require("telescope").load_extension("project")
			end,
		},
		keys = {
			{
				"<leader>pp",
				"<cmd>Telescope project<CR>",
				desc = "Find project list",
			},
		},
	},
}
