local opt = vim.opt

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.smartindent = true
opt.cursorline = false
opt.termguicolors = true

vim.g.vista_sidebar_width = 45
vim.g.startify_custom_header = vim.fn.split(vim.fn.system("echo '码码要洗手 Neovim ;)' | cowsay"), "\n")

-- for nvim-ufo
vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
