lvim.builtin.lualine.on_config_done = function(lualine)
	local config = lualine.get_config()
	local left_bubble = ""
	local right_bubble = ""

	config.sections.lualine_a[1].separator = {
		left = left_bubble,
		right = right_bubble,
	}
	config.sections.lualine_b[1].separator = {
		left = "",
		right = right_bubble,
	}
	config.sections.lualine_y[1].separator = {
		left = left_bubble,
		right = "",
	}
	config.sections.lualine_z[1].separator = {
		left = left_bubble,
		right = right_bubble,
	}
	lualine.setup(config)
end
