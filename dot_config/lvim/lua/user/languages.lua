lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- ensure these parsers are always installed, useful for those without a strict filetype
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"javascript",
	"dart",
	"json",
	"lua",
	"python",
	"typescript",
	"tsx",
	"css",
	"rust",
	"java",
	"comment",
	"markdown",
	"markdown_inline",
	"regex",
	"vim",
}

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
---`:LvimInfo` lists which server(s) are skipped for the current filetype
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
	return server ~= "emmet_ls, eslint"
end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
require("lspconfig").dartls.setup({})

-- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ name = "stylua" },
	{
		name = "prettier",
		-- extra_args = { "--print-width", "100" },
		-- filetypes = { "typescript", "typescriptreact" },
	},
	{
		name = "google_java_format",
	},
	{ name = "dart_format" },
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{
		name = "shellcheck",
		args = { "--severity", "warning" },
	},
	{ name = "eslint" },
})
