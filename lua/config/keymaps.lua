vim.keymap.set("n", "<C-P>", "<leader>ff")
vim.keymap.set("n", "<C-S>", "<cmd>w<cr>", { noremap = true, desc = "Save File" })

-- terminal
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "ToggleTerm bottom" })
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=58<cr>", { desc = "ToggleTerm vertical" })
vim.keymap.set("n", "<leader>tl", "<cmd>ToggleTermSendCurrentLine<cr>", { desc = "ToggleTerm current line" })
vim.keymap.set("n", "<leader>ts", "<cmd>ToggleTermSendVisualSelection<cr>", { desc = "ToggleTerm visual selection" })
vim.keymap.set("n", "<leader>tT", "<cmd>ToggleTerm direction=tab<cr>", { desc = "ToggleTerm tab" })
