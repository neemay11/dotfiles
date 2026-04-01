-- make j and k not skip over wrapped lines
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "gj", "j")
vim.keymap.set("n", "gk", "k")

-- disable search highlight
vim.keymap.set("n", "<leader><space>", "<cmd>nohlsearch<cr>")
vim.keymap.set("n", "<leader><cr>", "<cmd>nohlsearch<cr>")
