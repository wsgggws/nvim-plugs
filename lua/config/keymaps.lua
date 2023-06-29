vim.keymap.set("n", "<C-S>", "<cmd>w<cr>", { noremap = true, desc = "Save File" })

-- 将 Ctrl+a 映射到移至行首
vim.api.nvim_set_keymap("i", "<C-a>", "<Home>", { noremap = true, silent = true })

-- 将 Ctrl+b 映射到移至行第一个非空白字符处
vim.api.nvim_set_keymap("i", "<C-b>", [[<C-o>:normal! ^\s*\<CR>]], { noremap = true, silent = true })

-- 将 Ctrl+e 映射到移至行尾
vim.api.nvim_set_keymap("i", "<C-e>", "<End>", { noremap = true, silent = true })
