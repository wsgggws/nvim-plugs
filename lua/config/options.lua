local opt = vim.opt

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.smartindent = true

opt.termguicolors = true

vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })

vim.g.vista_sidebar_width = 45

vim.g.startify_custom_header = vim.fn.split(vim.fn.system("echo '码码要洗手 Neovim ;)' | cowsay"), "\n")
