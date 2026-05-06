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
	if vim.opt.relativenumber:get() then
		vim.opt.relativenumber = false
	else
		vim.opt.relativenumber = true
	end
end)
