-- 将 Ctrl+a 映射到移至行首
vim.api.nvim_set_keymap("i", "<C-a>", "<Home>", { noremap = true, silent = true })

-- 将 Ctrl+b 映射到移至行第一个非空白字符处
vim.api.nvim_set_keymap("i", "<C-b>", [[<C-o>:normal! ^\s*\<CR>]], { noremap = true, silent = true })

-- 将 Ctrl+e 映射到移至行尾
vim.api.nvim_set_keymap("i", "<C-e>", "<End>", { noremap = true, silent = true })

-- window resize, 需要确保这快捷键没有被系统占用，否则无效
vim.api.nvim_set_keymap("n", "<c-s-j>", "<cmd>res +1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<c-s-k>", "<cmd>res -1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<c-s-h>", "<cmd>vertical resize -1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<c-s-l>", "<cmd>vertical resize +1<CR>", { noremap = true, silent = true })

-- for plugin EasyAlign
vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", { desc = "EasyAlign text" })
vim.api.nvim_set_keymap("x", "ga", "<Plug>(EasyAlign)", { desc = "EasyAlign text" })

-- for plugin markdown
vim.api.nvim_set_keymap("n", "<leader>pm", "<Plug>MarkdownPreviewToggle", { desc = "Preview Markdown Toggle" })

-- for plugin EasyAlign
vim.api.nvim_set_keymap("n", "gS", "<Plug>(swap-interactive)", { desc = "<Plug>(swap-interactive)" })
vim.api.nvim_set_keymap("x", "gS", "<Plug>(swap-interactive)", { desc = "<Plug>(swap-interactive)" })

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

-- for goto-preview
vim.keymap.set("n", "gld", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
vim.keymap.set("n", "glt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", { noremap = true })
vim.keymap.set("n", "gli", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", { noremap = true })
vim.keymap.set("n", "glr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap = true })
vim.keymap.set("n", "glD", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", { noremap = true })
vim.keymap.set("n", "glq", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })
vim.keymap.set("n", "q", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })

-- for gomove
vim.api.nvim_set_keymap("n", "<A-S-h>", "<Plug>GoNSMLeft", {})
vim.api.nvim_set_keymap("n", "<A-S-j>", "<Plug>GoNSMDown", {})
vim.api.nvim_set_keymap("n", "<A-S-k>", "<Plug>GoNSMUp", {})
vim.api.nvim_set_keymap("n", "<A-S-l>", "<Plug>GoNSMRight", {})
vim.api.nvim_set_keymap("x", "<A-S-h>", "<Plug>GoVSMLeft", {})
vim.api.nvim_set_keymap("x", "<A-S-j>", "<Plug>GoVSMDown", {})
vim.api.nvim_set_keymap("x", "<A-S-k>", "<Plug>GoVSMUp", {})
vim.api.nvim_set_keymap("x", "<A-S-l>", "<Plug>GoVSMRight", {})
