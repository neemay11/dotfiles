return {
	"tpope/vim-surround",
	{
		"tpope/vim-fugitive",
		lazy = false,
		keys = {
			{ "<leader>gs", ":Git<CR>" },
			{ "<leader>gd", ":Gdiffsplit<CR>" },
			{ "<leader>gb", ":Git blame<CR>" },
		},
	},
	"tpope/vim-commentary",
	"tpope/vim-vinegar",
}
