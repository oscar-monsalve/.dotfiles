-- Extra autostart processes.
-- o.launch_on_start("my-service")

-- Ensure focus starts on workspace 2 (Added by Oscar)
o.exec_on_start("hyprctl dispatch workspace 2")
