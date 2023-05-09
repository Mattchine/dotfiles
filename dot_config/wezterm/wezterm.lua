-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux


-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Gruvbox dark, hard (base16)'
config.font = wezterm.font 'Fira Code Nerd Font'
config.font_size = 18.0

local smartsplits = require 'smart-splits'
config.keys = smartsplits.keys

-- maximize on start up
wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- and finally, return the configuration to wezterm
return config
