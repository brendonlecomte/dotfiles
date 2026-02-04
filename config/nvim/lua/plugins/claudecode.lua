return {
	"greggh/claude-code.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Re quired for git operations
	},
	config = function()
		require("claude-code").setup({
			window = {
				position = "vertical", -- Position of the window: "botright", "topleft", "vertical", "float", etc.
				enter_insert = true, -- Whether to enter insert mode when opening Claude Code
				hide_numbers = true, -- Hide line numbers in the terminal window
				hide_signcolumn = true, -- Hide the sign column in the terminal windowition = "right", -- Position of the window, can be "left", "right", "top", or "bottom"
			},
		})
	end,
	keymap = {
		window_navigation = true, -- Enable window navigation keymaps (<C-h/j/k/l>)
	},
	vim.keymap.set("n", "<leader>cc", "<cmd>ClaudeCode<CR>", { desc = "Toggle Claude Code" }),
}
