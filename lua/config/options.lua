local opt = vim.opt

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.smartindent = true
opt.termguicolors = true

-- for floder
-- vim.o.foldcolumn = "1" -- '0' is not bad
-- vim.o.foldlevel = 99 -- feel free to decrease the value
-- vim.o.foldlevelstart = 99
-- vim.o.foldenable = true

opt.background = "light"
if os.getenv("TERM_PROGRAM") == "iTerm.app" then
	opt.background = "dark"
end

vim.wo.colorcolumn = "120"

-- for winresizer
vim.g.winresizer_vert_resize = 3

-- for open-browser
vim.g.netrw_nogx = 1
