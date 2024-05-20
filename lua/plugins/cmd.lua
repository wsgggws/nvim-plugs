return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-emoji" },
		---@param opts cmp.ConfigSchema
		opts = function(_, opts)
			table.insert(opts.sources, { name = "emoji" })
		end,
	},
	{
		"hrsh7th/cmp-cmdline",
		config = function()
			local cmp = require("cmp")
			cmp.setup.cmdline(":", {
				mapping = cmp.mapping.preset.cmdline({
					["CR"] = {
						c = cmp.mapping.confirm({ select = false }),
					},
				}),
				sources = cmp.config.sources({
					{ name = "path" },
				}, {
					{
						name = "cmdline",
						option = {
							ignore_cmds = { "Man", "!" },
						},
					},
				}),
			})
		end,
	},
}
