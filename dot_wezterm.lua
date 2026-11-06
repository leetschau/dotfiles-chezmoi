local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Desert'

-- Set Git Bash as the default shell
-- config.default_prog = { 'C:\\Program Files\\Git\\bin\\bash.exe', '--login', '-i' }

config.enable_tab_bar = false  -- hide the tab bar
-- config.initial_cols = 120
-- config.initial_rows = 40
wezterm.on('gui-startup', function(cmd)  -- startup in maxmized window
  local _, _, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

config.keys = {
  {
    key = 'c',
    mods = 'ALT',
    action = wezterm.action.ActivateCopyMode,
  },
}

return config
