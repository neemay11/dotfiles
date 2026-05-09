-- make j and k not skip over wrapped lines
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "gj", "j")
vim.keymap.set("n", "gk", "k")

-- disable search highlight
vim.keymap.set("n", "<leader><space>", "<cmd>nohlsearch<cr>")
vim.keymap.set("n", "<leader><cr>", "<cmd>nohlsearch<cr>")

-- folding shortcut
vim.keymap.set("n", "<space>", "za")

-- toggle relative line numbers
vim.keymap.set("n", "<leader>n", function()
		vim.opt.relativenumber = not vim.opt.relativenumber:get()
end)

-- lsp goto definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition)

-- diagnostics messasge
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostics" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
