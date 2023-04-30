-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.opt.expandtab = true

-- general
lvim.log.level = "info"
lvim.format_on_save = true
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- -- Change theme settings
lvim.colorscheme = "catppuccin-mocha"
lvim.transparent_window = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- startup dashboard
lvim.builtin.alpha.dashboard.section.header.val = {
	"          ▀████▀▄▄              ▄█ ",
	"            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
	"    ▄        █          ▀▀▀▀▄  ▄▀  ",
	"   ▄▀ ▀▄      ▀▄              ▀▄▀  ",
	"  ▄▀    █     █▀   ▄█▀▄      ▄█    ",
	"  ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
	"   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
	"    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
	"   █   █  █      ▄▄           ▄▀   ",
}

-- Windows-specific configuration for PowerShell
local is_win32 = vim.fn.has("win32")
if is_win32 == 1 then
	-- Enable powershell as your default shell
	vim.opt.shell = "pwsh"
	vim.opt.shellcmdflag =
		"-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
	vim.cmd([[
		let &shellredir = '1>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		let &shellpipe = '1>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		set shellquote= shellxquote=
  ]])
end
