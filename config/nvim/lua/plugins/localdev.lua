return {
	{
		dir = "/Users/brendon.lecomte/research/devman-nvim",
		name = "devman",
		dependencies = {
			"kkharji/sqlite.lua",
		},
		config = function()
			require("init").setup()
			vim.keymap.set("n", "<leader>lt", ":DevmanTodo<CR>", { desc = "Open Dev Todo", silent = true })
		end,
	},
}
