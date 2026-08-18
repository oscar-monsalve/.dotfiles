-- Extra autostart processes.
-- o.launch_on_start("my-service")

-- Ensure worspace 2 is focued at startup (added by Oscar).
hl.on("hyprland.start", function()
  hl.timer(function()
    hl.dispatch(hl.dsp.focus({ workspace = "2" }))
  end, { timeout = 1000, type = "oneshot" })
end)
