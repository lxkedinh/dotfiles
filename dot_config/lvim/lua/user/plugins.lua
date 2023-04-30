-- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
local mocha_colors = require("catppuccin.palettes").get_palette("mocha")

lvim.plugins = {
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{
		"folke/todo-comments.nvim",
		event = "BufRead",
	},
	-- {
	-- 	"nvim-lualine/lualine.nvim",
	-- 	config = function() end,
	-- },
	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup({
				highlight_overrides = {
					mocha = function(mocha)
						return {
							LineNr = { fg = mocha.overlay0 },
							CursorLineNr = { fg = mocha.sapphire },
						}
					end,
				},
			})
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
				RGB = true,
				RRGGBB = true,
				RRGGBBAA = true,
				rgb_fn = true,
				hsl_fn = true,
				css = true,
				css_fn = true,
			})
		end,
	},
	{ "pantharshit00/coc-prisma" },
	{ "prisma/vim-prisma" },
	{ "jose-elias-alvarez/typescript.nvim" },
}
