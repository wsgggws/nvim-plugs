-- 将 Ctrl+l 映射到移至行首
vim.api.nvim_set_keymap("i", "<C-l>", "<Home>", { noremap = true, silent = true })
-- 将 Ctrl+a 映射到移至行第一个非空白字符处
vim.api.nvim_set_keymap("i", "<C-a>", [[<C-o>:normal! ^\s*\<CR>]], { noremap = true, silent = true })
-- 将 Ctrl+e 映射到移至行尾
vim.api.nvim_set_keymap("i", "<C-e>", "<End>", { noremap = true, silent = true })

-- window resize, 需要确保这快捷键没有被系统占用，否则无效
vim.api.nvim_set_keymap("n", "<c-s-j>", "<cmd>res +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<c-s-k>", "<cmd>res -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<c-s-h>", "<cmd>vertical resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<c-s-l>", "<cmd>vertical resize +2<CR>", { noremap = true, silent = true })

-- for plugin markdown
vim.api.nvim_set_keymap("n", "<leader>vm", "<Plug>MarkdownPreviewToggle", { desc = "View Markdown Toggle" })

-- for goto-preview
-- vim.keymap.set("n", "gld", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
-- vim.keymap.set("n", "glt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", { noremap = true })
-- vim.keymap.set("n", "gli", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", { noremap = true })
-- vim.keymap.set("n", "glr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap = true })
-- vim.keymap.set("n", "glD", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", { noremap = true })
-- vim.keymap.set("n", "glq", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })
-- vim.keymap.set("n", "q", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })

-- for gomove
-- vim.api.nvim_set_keymap("n", "<A-S-h>", "<Plug>GoNSMLeft", {})
-- vim.api.nvim_set_keymap("n", "<A-S-j>", "<Plug>GoNSMDown", {})
-- vim.api.nvim_set_keymap("n", "<A-S-k>", "<Plug>GoNSMUp", {})
-- vim.api.nvim_set_keymap("n", "<A-S-l>", "<Plug>GoNSMRight", {})
-- vim.api.nvim_set_keymap("x", "<A-S-h>", "<Plug>GoVSMLeft", {})
-- vim.api.nvim_set_keymap("x", "<A-S-j>", "<Plug>GoVSMDown", {})
-- vim.api.nvim_set_keymap("x", "<A-S-k>", "<Plug>GoVSMUp", {})
-- vim.api.nvim_set_keymap("x", "<A-S-l>", "<Plug>GoVSMRight", {})
