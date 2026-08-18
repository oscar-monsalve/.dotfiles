-- Learn how to configure Hyprland: https://wiki.hypr.land/Configuring/Start/

-- Omarchy's bootstrap keeps path setup out of this user config.
dofile((os.getenv("OMARCHY_PATH") or "/usr/share/omarchy") .. "/default/hypr/bootstrap.lua")

-- Disable all Omarchy default bindings. Add your own in hypr/bindings.lua.
-- omarchy_default_bindings = false
--
-- Or disable only bindings for Omarchy's preinstalled apps/web apps while
-- keeping core window-manager bindings:
-- omarchy_preinstalled_bindings = false

-- Load Omarchy defaults.
require("default.hypr.omarchy")

-- Put your personal overrides in these files. They're loaded after Omarchy's
-- defaults so package updates can improve the defaults without rewriting your
-- ~/.config/hypr files.
require("hypr.monitors")
require("hypr.input")
require("hypr.bindings")
require("hypr.looknfeel")
require("hypr.autostart")

-- Toggle config flags dynamically.
require("default.hypr.toggles")


-- ---- Configs added by Oscar ----
-- Keep the first two workspaces on their preferred monitors.
hl.workspace_rule({ workspace = "1", monitor = "DVI-D-1" })
hl.workspace_rule({ workspace = "2", monitor = "HDMI-A-1" })

-- Keep MEGA's fixed-size status panel floating at the monitor's top-right.
o.window({
  class = "^MEGAsync$",
  title = "^MEGAsync$",
}, {
  float = true,
  size = { 400, 562 },
  move = { "(monitor_w-window_w-12)", 38 },
})
