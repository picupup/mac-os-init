-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

config.hide_tab_bar_if_only_one_tab = true
config.force_reverse_video_cursor = true
config.font_size = 18

config.font = wezterm.font('JetBrains Mono')
--config.font = wezterm.font('Andale Mono')

config.harfbuzz_features = {"calt=0", "clig=0", "liga=0"}

-- Define the new key bindings for switching between split tabs using Shift and arrow buttons
config.keys = {
  -- Shift key bindings
  { key="LeftArrow", mods="SHIFT", action=wezterm.action { ActivatePaneDirection="Left" } },
  { key="RightArrow", mods="SHIFT", action=wezterm.action { ActivatePaneDirection="Right" } },
  { key="UpArrow", mods="SHIFT", action=wezterm.action { ActivatePaneDirection="Up" } },
  { key="DownArrow", mods="SHIFT", action=wezterm.action { ActivatePaneDirection="Down" } },
  -- Command key bindings
  { key="LeftArrow", mods="CMD", action=wezterm.action { ActivatePaneDirection="Left" } },
  { key="RightArrow", mods="CMD", action=wezterm.action { ActivatePaneDirection="Right" } },
  { key="UpArrow", mods="CMD", action=wezterm.action { ActivatePaneDirection="Up" } },
  { key="DownArrow", mods="CMD", action=wezterm.action { ActivatePaneDirection="Down" } },
}

config.window_close_confirmation = 'NeverPrompt'

config.color_scheme = 'Google Dark (Gogh)'
--config.color_scheme = 'Gruvbox (Gogh)'

return config

