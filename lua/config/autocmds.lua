vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "go" },
	callback = function()
		vim.opt.tabstop = 8
		vim.opt.softtabstop = 8
		vim.opt.shiftwidth = 8
	end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "toml", "yaml" },
	callback = function()
		vim.b.autoformat = false
	end,
})
