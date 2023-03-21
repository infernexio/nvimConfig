-- setting up packer and plugins
require("sohail.plugins-setup")

-- core
require("sohail.core.options")
require("sohail.core.keymaps")
require("sohail.core.colorscheme")

-- plugins
require("sohail.plugins.comment")
require("sohail.plugins.nvim-tree")
require("sohail.plugins.lualine")
require("sohail.plugins.telescope")
require("sohail.plugins.nvim-cmp")
require("sohail.plugins.lsp.mason")
require("sohail.plugins.lsp.lspsaga")
require("sohail.plugins.lsp.lspconfig")
require("sohail.plugins.lsp.null-ls")
require("sohail.plugins.autopairs")
require("sohail.plugins.treesitter")
require("sohail.plugins.gitsigns")
