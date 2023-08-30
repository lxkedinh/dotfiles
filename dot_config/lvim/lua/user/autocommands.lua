-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })

-- autocommands for changing some colors to my preferences
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = "#b4befe" })
		vim.api.nvim_set_hl(0, "NoiceCmdlinePopupTitle", { fg = "#74c7ec" })
	end,
})
