-- Change the default Omarchy look'n'feel.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
-- hl.config({
--   general = {
--     -- No gaps between windows or borders.
--     gaps_in = 0,
--     gaps_out = 0,
--     border_size = 0,
--
--     -- Change to niri-like side-scrolling layout.
--     -- layout = "scrolling",
--   },
-- })

-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
hl.config({
  decoration = {
    -- Use round window corners.
    rounding = 8,

    -- Dim unfocused windows (0.0 = no dim, 1.0 = fully dimmed).
    -- dim_inactive = true,
    -- dim_strength = 0.15,
  },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
-- hl.config({
--   animations = {
--     -- Disable all animations.
--     enabled = false,
--   },
-- })

-- https://wiki.hypr.land/Configuring/Basics/Variables/#layout
-- hl.config({
--   layout = {
--     -- Avoid overly wide single-window layouts on wide screens.
--     single_window_aspect_ratio = { 1, 1 },
--   },
-- })

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
-- hl.config({
--   scrolling = {
--     -- See only one column per screen instead of two.
--     column_width = 0.97,
--   },
-- })

-- ---- Window configs added by Oscar ----
o.window("org.omarchy.btop", {
  tag = "-floating-window", -- Opt out of Omarchy's generic floating-window tag, which enforces 875x600.
  float = true,
  center = true,
  size = { 1200, 800 },
})

-- Keep selected applications fully opaque by opting out of Omarchy's default opacity.
local opaque_apps = "^(paraview|ParaView|com\\.mitchellh\\.ghostty|brave-browser|org\\.kde\\.okular|okular|obsidian|md\\.obsidian\\.Obsidian|com\\.obsproject\\.Studio|LabPlot|labplot|org\\.kde\\.labplot|org\\.kde\\.labplot2|Drawy|drawy|org\\.kde\\.drawy|FreeCAD|org\\.freecad\\.FreeCAD|gimp|Gimp|org\\.gimp\\.GIMP|inkscape|org\\.inkscape\\.Inkscape)$"
o.window(opaque_apps, {
  tag = "-default-opacity",
  opacity = "1 1",
})

-- Brave is fully opaque, so remove Omarchy's Chromium-specific opacity treatment too.
o.window("^brave-browser$", {
  tag = "-chromium-based-browser",
})

-- Keep Gnuplot plot windows floating at their default size.
o.window("^gnuplot_qt$", {
  float = true,
})

-- Keep Matplotlib figure windows floating at their default size.
o.window({
  class = "^python3$",
  title = "^Figure [0-9]+$",
}, {
  float = true,
})
