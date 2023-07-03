vim.keymap.set("n", "<C-S>", "<cmd>w<cr>", { noremap = true, desc = "Save File" })

-- 将 Ctrl+a 映射到移至行首
vim.api.nvim_set_keymap("i", "<C-a>", "<Home>", { noremap = true, silent = true })

-- 将 Ctrl+b 映射到移至行第一个非空白字符处
vim.api.nvim_set_keymap("i", "<C-b>", [[<C-o>:normal! ^\s*\<CR>]], { noremap = true, silent = true })

-- 将 Ctrl+e 映射到移至行尾
vim.api.nvim_set_keymap("i", "<C-e>", "<End>", { noremap = true, silent = true })

-- for plugin EasyAlign
vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", { desc = "EasyAlign text" })
vim.api.nvim_set_keymap("x", "ga", "<Plug>(EasyAlign)", { desc = "EasyAlign text" })

-- for plugin markdown
vim.api.nvim_set_keymap("n", "<leader>mp", "<Plug>MarkdownPreviewToggle", { desc = "Markdown Preview Toggle" })

-- for plugin EasyAlign
vim.api.nvim_set_keymap("n", "gp", "<Plug>(swap-interactive)", { desc = "<Plug>(swap-interactive)" })
vim.api.nvim_set_keymap("x", "gp", "<Plug>(swap-interactive)", { desc = "<Plug>(swap-interactive)" })

-- for spectre
vim.keymap.set("n", "<leader>So", '<cmd>lua require("spectre").open()<CR>', {
	desc = "Run Spectre",
})
vim.keymap.set("n", "<leader>Sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
	desc = "Spectre search current word",
})
vim.keymap.set("v", "<leader>Sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
	desc = "Spectre search current word",
})
vim.keymap.set("n", "<leader>Sf", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
	desc = "Spectre search on current file",
})
