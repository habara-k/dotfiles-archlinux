local wezterm = require("wezterm")

local act = wezterm.action

return {
	initial_cols = 200,
	initial_rows = 200,
	window_background_opacity = 0.7,
	leader = { key = "q", mods = "CTRL", timeout_milliseconds = math.maxinteger },
	keys = {
		{ key = "f", mods = "LEADER", action = act.SpawnTab("CurrentPaneDomain") },
		{ key = "c", mods = "LEADER", action = act.SpawnTab("CurrentPaneDomain") },
		{ key = "-", mods = "LEADER", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "|", mods = "LEADER|SHIFT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "x", mods = "LEADER", action = act.CloseCurrentPane({ confirm = true }) },
		{ key = "q", mods = "LEADER", action = act.CloseCurrentTab({ confirm = true }) },
		{ key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
		{ key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
		{ key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
		{ key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },
		{ key = "H", mods = "LEADER|SHIFT", action = act.AdjustPaneSize({ "Left", 5 }) },
		{ key = "J", mods = "LEADER|SHIFT", action = act.AdjustPaneSize({ "Down", 5 }) },
		{ key = "K", mods = "LEADER|SHIFT", action = act.AdjustPaneSize({ "Up", 5 }) },
		{ key = "L", mods = "LEADER|SHIFT", action = act.AdjustPaneSize({ "Right", 5 }) },
		{ key = "n", mods = "LEADER", action = act.ActivateTabRelative(1) },
		{ key = "p", mods = "LEADER", action = act.ActivateTabRelative(-1) },
		{ key = "[", mods = "LEADER", action = act.ActivateCopyMode },
	},
}
