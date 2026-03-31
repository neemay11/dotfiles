return {
	"nvim-telescope/telescope.nvim", version="*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	keys = {
		{ "<C-p>", "<cmd>Telescope find_files<cr>" },
		{ "<leader>fg", "<cmd>Telescope git_files<cr>" },
		{ "<leader>fs", "<cmd>Telescope live_grep<cr>" },
	},
}
