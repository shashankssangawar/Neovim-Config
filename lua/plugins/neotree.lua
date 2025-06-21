return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		-- { "3rd/image.nvim", opts = {} },
	},
	lazy = false,
	opts = {},
	config = function()
		vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
		vim.keymap.set("n", "<leader>o", "<cmd>Neotree focus<CR>", { desc = "Focus Neo-tree" })
	end,
}
