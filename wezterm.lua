local wezterm = require("wezterm")
local config = wezterm.config_builder()

--config.font = wezterm.font("Blexmono Nerd Font", { weight = "Medium", italic = true })
config.font = wezterm.font_with_fallback({ "ZedMono Nerd Font", "D2Coding" })
config.font_size = 11
--config.color_scheme = "lovelace"
config.color_scheme = "Cloud (terminal.sexy)"
--config.color_scheme = "tokyonight_night"
--config.color_scheme = "Tokyo Night Storm (Gogh)"
--config.color_scheme = "Neon Night (Gogh)"

config.window_background_opacity = 0.85

return config
