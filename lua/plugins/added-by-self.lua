return {
	{ "farmergreg/vim-lastplace" },

	{ "christoomey/vim-titlecase" },

	{ "ggandor/flit.nvim", enabled = true },

	{ "machakann/vim-swap" },

	{ "junegunn/vim-easy-align" },

	-- { "mg979/vim-visual-multi" },

	{
		"sindrets/diffview.nvim",
		keys = {
			{
				"<leader>vd",
				"<cmd>DiffviewOpen<CR>",
				desc = "DiffviewOpen",
			},
			{
				"<leader>vc",
				"<cmd>DiffviewClose<CR>",
				desc = "DiffviewClose",
			},
			{
				"<leader>vh",
				"<cmd>DiffviewFileHistory %<CR>",
				desc = "DiffviewFileHistory cur file",
			},
		},
	},

	{ "mhinz/vim-startify" },

	{ "tpope/vim-surround" },

	-- debug python
	{
		"mfussenegger/nvim-dap",
		keys = {
			{
				"<leader>dd",
				"<cmd>lua require('dap').toggle_breakpoint()<CR>",
				desc = "Debug toggle toggle_breakpoint",
			},
			-- leader dc 可以直接开始 Debug, Nice
			{
				"<leader>dc",
				"<cmd>lua require('dap').continue()<CR>",
				desc = "Debug continue",
			},
			{
				"<leader>di",
				"<cmd>lua require('dap').step_into()<CR>",
				desc = "Debug step into",
			},
			{
				"<leader>do",
				"<cmd>lua require('dap').step_out()<CR>",
				desc = "Debug step out",
			},
			{
				"<leader>dn",
				"<cmd>lua require('dap').step_over()<CR>",
				desc = "Debug step next or over",
			},
			{
				"<leader>ds",
				"<cmd>lua require('dap').close()<CR>",
				desc = "Debug close",
			},
		},
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		config = function(_, opts)
			require("nvim-dap-virtual-text").setup(opts)
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		config = function(_, opts)
			require("dapui").setup(opts)
		end,
		keys = {
			{
				"<leader>du",
				"<cmd>lua require('dapui').toggle()<CR>",
				desc = "Debug toggle UI",
			},
			{
				"<leader>dm",
				"<cmd>lua require('dap-python').test_method()<CR>",
				desc = "Debug test method",
			},
			{
				"<leader>da",
				"<cmd>lua require('dap-python').test_class()<CR>",
				desc = "Debug test  a class",
			},
		},
	},
	{
		"mfussenegger/nvim-dap-python",
		config = function(_, _)
			require("dap-python").setup(os.getenv("MYPYTHON"))
			-- require("dap-python").setup("/opt/homebrew/bin/python3.9")
			local crawler_env = {
				["PYTHONPATH"] = ".:crawler",
				["DEFAULT_ENV_FOR_DYNACONF"] = "default",
				["ROOT_PATH_FOR_DYNACONF"] = "config",
				["NEW_RELIC_ENVIRONMENT"] = "development",
				["ENV_FOR_DYNACONF"] = "development",
				["CONFIG_CENTER_DEBUG"] = "true",
				["CONFIG_CENTER_ENV"] = "development",
				[os.getenv("KEY1")] = os.getenv("VALUE1"),
				[os.getenv("KEY2")] = os.getenv("VALUE2"),
				[os.getenv("KEY3")] = os.getenv("VALUE3"),
				[os.getenv("KEY4")] = os.getenv("VALUE4"),
			}
			table.insert(require("dap").configurations.python, {
				type = "python",
				request = "launch",
				name = "Debug Poll Main",
				cwd = os.getenv("CWD"),
				program = os.getenv("PROGRAM"),
				env = crawler_env,
				justMyCode = false,
				-- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
			})
			table.insert(require("dap").configurations.python, {
				type = "python",
				request = "launch",
				name = "Debug pytest cur file",
				module = "pytest",
				args = { "-vv", "${file}" },
				env = crawler_env,
				justMyCode = false,
			})
			table.insert(require("dap").configurations.python, {
				type = "python",
				request = "launch",
				name = "Debug scrapy runspider",
				module = "scrapy",
				args = { "runspider", "${file}" },
				justMyCode = false,
			})
		end,
	},
	{
		"leoluz/nvim-dap-go",
		config = function(_, _)
			require("dap-go").setup({
				dap_configurations = {
					{
						-- Must be "go" or it will be ignored by the plugin
						type = "go",
						name = "Attach remote",
						mode = "remote",
						request = "attach",
					},
				},
				-- delve configurations
				delve = {
					-- the path to the executable dlv which will be used for debugging.
					-- by default, this is the "dlv" executable on your PATH.
					path = "dlv",
					-- time to wait for delve to initialize the debug session.
					-- default to 20 seconds
					initialize_timeout_sec = 20,
					-- a string that defines the port to start delve debugger.
					-- default to string "${port}" which instructs nvim-dap
					-- to start the process in a random available port
					port = "${port}",
					-- additional args to pass to dlv
					args = {},
				},
			})
		end,
	},

	-- markdown support
	{ "godlygeek/tabular" }, -- required by vim-markdown
	{ "plasticboy/vim-markdown" },
	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	{ "airblade/vim-rooter" },

	{ "kshenoy/vim-signature" },

	{
		"simrat39/symbols-outline.nvim",
		version = "*",
		cmd = "SymbolsOutline",
		keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
		config = true,
	},

	-- terminal
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		keys = {
			{ "<leader>tt", "<cmd>ToggleTerm direction=horizontal size=16<cr>", desc = "ToggleTerm bottom" },
			{ "<leader>tr", "<cmd>ToggleTerm direction=vertical size=52<cr>", desc = "ToggleTerm right" },
			{ "<leader>tl", "<cmd>ToggleTermSendCurrentLine<cr>", desc = "ToggleTerm current line" },
			{ "<leader>ts", "<cmd>ToggleTermSendVisualSelection<cr>", desc = "ToggleTerm visual selection" },
			{ "<leader>tT", "<cmd>ToggleTerm direction=tab<cr>", desc = "ToggleTerm tab" },
		},
	},

	-- code_runner
	{
		"CRAG666/code_runner.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{ "<leader>rr", "<cmd>RunCode<cr>", desc = "Run Code" },
			{ "<leader>rf", "<cmd>RunFile<cr>", desc = "Run File" },
			{ "<leader>rp", "<cmd>RunProject<cr>", desc = "Run Project" },
			{ "<leader>rd", "<cmd>RunClose<cr>", desc = "Run Close" },
		},
		config = {
			-- choose default mode (valid term, tab, float, toggle, buf)
			mode = "term",
			-- Focus on runner window(only works on toggle, term and tab mode)
			focus = true,
			-- startinsert (see ':h inserting-ex')
			startinsert = false,
			term = {
				--  Position to open the terminal, this option is ignored if mode is tab
				position = "bot",
				-- window size, this option is ignored if tab is true
				size = 8,
			},
			float = {
				-- Key that close the code_runner floating window
				close_key = "<ESC>",
				-- Window border (see ':h nvim_open_win')
				border = "none",

				-- Num from `0 - 1` for measurements
				height = 0.8,
				width = 0.8,
				x = 0.5,
				y = 0.5,

				-- Highlight group for floating window/border (see ':h winhl')
				border_hl = "FloatBorder",
				float_hl = "Normal",

				-- Transparency (see ':h winblend')
				blend = 0,
			},
			filetype_path = "", -- No default path defined
			filetype = {
				javascript = "node",
				java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
				c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
				cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
				python = "/opt/homebrew/bin/python3.9 -u",
				sh = "bash",
				rust = "cd $dir && rustc $fileName && $dir$fileNameWithoutExt",
				go = "cd $dir && go run $fileName",
			},
			project_path = "", -- No default path defined
			project = {},
		},
		ft = { "lua", "python", "c", "cpp", "go", "rust" },
	},
}
