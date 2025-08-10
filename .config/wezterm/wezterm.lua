local wezterm = require("wezterm")
-- load constants from the same dir as this file (robust)
local constants = dofile(wezterm.config_dir .. "/constants.lua")
local config = wezterm.config_builder()

-- font
config.font_size = 17
config.line_height = 1.2
config.font = wezterm.font("FiraCode Nerd Font")

-- cursor colors (ok)
config.colors = {
  cursor_bg = "white",
  cursor_border = "white",
}

-- appearance (fix the dots)
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config_window_padding = {
	left = 0,
	right = 0, 
	top = 0,
	bottom = 0,
}

-- background image
config.window_background_image = constants.bg_image

-- Miscellaneous setting
config.max_fps = 120

return config

