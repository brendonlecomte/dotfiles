-- plugins
lvim.plugins = {
	{
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"junegunn/limelight.vim"
	}
}

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":bnext<cr>"
lvim.keys.normal_mode["<S-h>"] = ":bprev<cr>"

lvim.builtin.which_key.mappings["v"] = {
	name = "+Vim",
	w = { "<cmd>set list!<cr>", "Whitespace" },
	r = { "<cmd>set relativenumber!<cr>", "Relative Number" },
	n = { "<cmd>set nonumber!<cr>", "Line Numbers" },
	t = { "<cmd>set expandtab!<cr>", "Toggle Expandtab" },
	l = { "<cmd>Limelight!!<cr>", "Toggle Limelight" },
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"go",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	"tsx",
	"css",
	"rust",
	"java",
	"yaml",
}

lvim.builtin.treesitter.highlight.enable = true

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
-- }

vim.opt.listchars = { tab = '> ', trail = '~', eol = '¬', space = '.', nbsp = '+' }
vim.opt.list = true
