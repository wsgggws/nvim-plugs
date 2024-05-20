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

vim.api.nvim_create_autocmd({ "ExitPre" }, {
	callback = function()
		-- vim.opt.guicursor = "a:ver25-blinkon250-blinkoff400-blinkwait700"
		vim.opt.guicursor = "a:hor25-blinkon250-blinkoff400-blinkwait700"
	end,
})

vim.api.nvim_create_autocmd({ "UIEnter" }, {
	desc = "Auto select virtualenv Nvim open",
	pattern = "*",
	callback = function()
		local venv = vim.fn.findfile("pyproject.toml", vim.fn.getcwd() .. ";")
		if venv ~= "" then
			local selector = require("venv-selector")
			-- 这里需要等待小段时间
			vim.wait(100, nil, 1)
			selector.retrieve_from_cache()
			vim.notify("Current virtualenv: " .. selector.get_active_venv())
			local python_dap = require("dap-python")
			python_dap.resolve_python = function()
				return selector.get_active_path()
			end
		end
	end,
	once = true,
})

-- 如果 UIEnter  无法触发，再使用 WinEnter, 需要 <leader>space 手动触发一下
vim.api.nvim_create_autocmd({ "WinEnter" }, {
	desc = "Auto select virtualenv Nvim open",
	pattern = "*",
	callback = function()
		local venv = vim.fn.findfile("pyproject.toml", vim.fn.getcwd() .. ";")
		if venv ~= "" then
			local selector = require("venv-selector")
			selector.retrieve_from_cache()
			local python_dap = require("dap-python")
			python_dap.resolve_python = function()
				return selector.get_active_path()
			end
		end
	end,
	once = true,
})
