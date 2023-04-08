-- 这里更改 black 的 max-length 为 119, 代码复制于 nls.builtins.formatting.black
local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

local black_formatter = h.make_builtin({
	name = "black",
	meta = {
		url = "https://github.com/psf/black",
		description = "The uncompromising Python code formatter",
	},
	method = FORMATTING,
	filetypes = { "python" },
	generator_opts = {
		command = "black",
		args = {
			"--stdin-filename",
			"$FILENAME",
			"--quiet",
			"-l 119",
			"-",
		},
		to_stdin = true,
	},
	factory = h.formatter_factory,
})

return {
	{
		"jose-elias-alvarez/null-ls.nvim",
		opts = function(_, opts)
			local nls = require("null-ls")

			table.insert(opts.sources, nls.builtins.formatting.isort)
			-- table.insert(opts.sources, nls.builtins.formatting.black)
			table.insert(opts.sources, black_formatter)

			table.insert(opts.sources, nls.builtins.formatting.gofumpt)
			table.insert(opts.sources, nls.builtins.formatting.goimports)
			table.insert(opts.sources, nls.builtins.formatting.goimports_reviser)

			table.insert(opts.sources, nls.builtins.formatting.rustfmt)

			table.insert(opts.sources, nls.builtins.formatting.shfmt)

			table.insert(opts.sources, nls.builtins.formatting.clang_format)

			-- it include many files, i.e. json, markdown, yaml...
			table.insert(opts.sources, nls.builtins.formatting.prettierd)
		end,
	},
}
