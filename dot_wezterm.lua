local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.enable_tab_bar = false  -- hide the tab bar
wezterm.on('gui-startup', function(cmd)  -- startup in maxmized window
  local _, _, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

return config
