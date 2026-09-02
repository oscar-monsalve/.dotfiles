-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")


-- ---- Custom bindings added by Oscar ----

-- Default unbinds
hl.unbind("SUPER + J")                 -- Toggle window split
hl.unbind("SUPER + K")                 -- Show key bindings
hl.unbind("SUPER + L")                 -- Toggle workspace layout
hl.unbind("SUPER + SHIFT + D")         -- Docker
hl.unbind("SUPER + SHIFT + E")         -- Email (Hey)
hl.unbind("SUPER + SHIFT + G")         -- Signal
hl.unbind("SUPER + SHIFT + O")         -- Obsidian
hl.unbind("SUPER + SHIFT + P")         -- Google photos
hl.unbind("SUPER + SHIFT + S")         -- Google maps
hl.unbind("SUPER + CTRL + T")          -- btop tui
hl.unbind("SUPER + SHIFT + ALT + B")   -- Browser (private)
hl.unbind("SUPER + SHIFT + ALT + G")   -- WhatsApp
hl.unbind("SUPER + SHIFT + CTRL + G")  -- Google messages

-- Menus
o.bind("ALT + K", "Show key bindings", "omarchy-menu-keybindings")

-- Apps
o.bind("SUPER + SHIFT + Q", "Calculator (Qalculate! Qt)", { launch = "qalculate-qt" })
-- o.bind("SUPER + SHIFT + Q", "Calculator (Qalculate!)", {tui = "qalculate-gt"})
o.bind("SUPER + SHIFT + T", "btop TUI", { tui = "btop" })
o.bind("SUPER + SHIFT + CTRL + B", "Browser (private)", { omarchy = "browser --private" })

-- Plugins
-- Omarchy Find file search overlay
o.bind("ALT + SPACE", "Find files & folders", "omarchy-shell shell toggle jesseburlamaque.omarchy-find")

-- Webapps
o.bind("SUPER + SHIFT + G", "WhatsApp", { webapp = "https://web.whatsapp.com/", focus = true })
o.bind("SUPER + SHIFT + O", "Onedrive", "omarchy-launch-webapp 'https://onedrive.live.com/my?id=%2Fpersonal%2Fd6dfb99c85201cab%2FDocuments%2FITM%2F2%2E%20Teaching%2F2%2E%20Catedra'")
o.bind("SUPER + SHIFT + E", "Personal Email", "omarchy-launch-webapp 'https://gmail.com'")
o.bind("SUPER + SHIFT + CTRL + E", "Work Email", "omarchy-launch-webapp 'https://outlook.cloud.microsoft/mail/'")

-- Tiling
o.bind("SUPER + SHIFT + S", "Toggle window split", hl.dsp.layout("togglesplit"))

-- Move focus with SUPER + hjkl
o.bind("SUPER + H", "Focus on left window", hl.dsp.focus({ direction = "l" }))
o.bind("SUPER + L", "Focus on right window", hl.dsp.focus({ direction = "r" }))
o.bind("SUPER + K", "Focus on above window", hl.dsp.focus({ direction = "u" }))
o.bind("SUPER + J", "Focus on below window", hl.dsp.focus({ direction = "d" }))

-- Swap active window with the one next to it with SUPER + SHIFT + hjkl
o.bind("SUPER + SHIFT + H", "Swap window to the left", hl.dsp.window.swap({ direction = "l" }))
o.bind("SUPER + SHIFT + L", "Swap window to the right", hl.dsp.window.swap({ direction = "r" }))
o.bind("SUPER + SHIFT + K", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
o.bind("SUPER + SHIFT + J", "Swap window down", hl.dsp.window.swap({ direction = "d" }))

-- Resize (expand) active window
o.bind("SUPER + CTRL + SHIFT + H", "Resize (expand) window left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
o.bind("SUPER + CTRL + SHIFT + L", "Resize (expand) window right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
o.bind("SUPER + CTRL + SHIFT + K", "Resize (expand) window up", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))
o.bind("SUPER + CTRL + SHIFT + J", "Resize (expand) window down", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))
