local wezterm = require 'wezterm';

wezterm.on("format-window-title", function(tab, tabs, panes, config)
    return tab.active_pane.title
end)

local function get_nu_exe()
    if (wezterm.target_triple == "x86_64-unknown-linux-gnu") then return "/home/linuxbrew/.linuxbrew/bin/nu"
    else return "nu"
    end
end

return {
    default_prog = {get_nu_exe(), "--config", wezterm.home_dir .. "/.config/nushell/config.nu", "--env-config", wezterm.home_dir .. "/.config/nushell/env.nu" },
    set_environment_variables = {
        fooo = "asdasdasd",
    },
    check_for_updates = false,
    harfbuzz_features = {"calt=0", "clig=0", "liga=0"},
    warn_about_missing_glyphs = false,
    color_scheme = "Builtin Tango Dark",
    exit_behavior = "Close",
    font_size = 12.0,
    leader = { key="phys:F", mods="CTRL", timeout_milliseconds=1000 },
    hide_tab_bar_if_only_one_tab = true,
    tab_bar_at_bottom = true,
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
}
