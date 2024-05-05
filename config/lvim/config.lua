-- plugins
lvim.plugins = {
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "junegunn/limelight.vim",
  },
  {
    'sebdah/vim-delve',
  },
  {
    'preservim/vimux',
  },
  {
    'fatih/vim-go',
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    'APZelos/blamer.nvim',
  },
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

-- Use the Telescope plugin for the Goto Reference keys
lvim.lsp.buffer_mappings.normal_mode["gr"] = { "<cmd>Telescope lsp_references<cr>", "References" }
lvim.lsp.buffer_mappings.normal_mode["gi"] = { "<cmd>Telescope lsp_implementations<cr>", "Implementations" }

-- Use Blamer rather than default blame
lvim.lsp.buffer_mappings.normal_mode["gl"] = { "<cmd>BlamerToggle<cr>", "Blame" }

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
  "php",
}

lvim.builtin.treesitter.highlight.enable = true
require("lvim.lsp.manager").setup("bufls")
-- -- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } },
}


local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact" },
  },
}

vim.opt.listchars = { tab = '> ', trail = '~', eol = '¬', space = '.', nbsp = '+' }
vim.opt.list = true


-- Copilot Specific
local ok, copilot = pcall(require, "copilot")
if not ok then
  return
end

copilot.setup {
  suggestion = {
    keymap = {
      accept = "<c-l>",
      next = "<c-j>",
      prev = "<c-k>",
      dismiss = "<c-h>",
    },
  },
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<c-s>", "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)
