return {
  monitor = {
    "eDP-1, 1920x1080@60, 0x0, 1",
    "desc:Philips Consumer Electronics Company PHL 272B8Q UK01933010545, 2560x1440@60, 0x0, 1",
    "desc:InfoVision Optoelectronics (Kunshan) Co.Ltd China 0x8596 0x00000004, 1920x1080@60, 320x1440, 1",
  },

  workspace = {
    "1, monitor:desc:InfoVision Optoelectronics (Kunshan) Co.Ltd China 0x8596 0x00000004, default:true, persistent:true",
    "2, monitor:desc:InfoVision Optoelectronics (Kunshan) Co.Ltd China 0x8596 0x00000004",
    "3, monitor:desc:InfoVision Optoelectronics (Kunshan) Co.Ltd China 0x8596 0x00000004",
    "4, monitor:desc:InfoVision Optoelectronics (Kunshan) Co.Ltd China 0x8596 0x00000004",
    "5, monitor:desc:InfoVision Optoelectronics (Kunshan) Co.Ltd China 0x8596 0x00000004",
    "6, monitor:desc:Philips Consumer Electronics Company PHL 272B8Q UK01933010545, default:true, persistent:true",
    "7, monitor:desc:Philips Consumer Electronics Company PHL 272B8Q UK01933010545",
    "8, monitor:desc:Philips Consumer Electronics Company PHL 272B8Q UK01933010545",
    "9, monitor:desc:Philips Consumer Electronics Company PHL 272B8Q UK01933010545",
    "10, monitor:desc:Philips Consumer Electronics Company PHL 272B8Q UK01933010545",
  },

  variables = {
    terminal = "kitty",
    fileManager = "kitty yazi",
    menu = "rofi -show drun -modes \"drun,calc\"",
    browser = "zen-browser",
    mainMod = "SUPER",
  },

  exec_once = {
    "/usr/lib/hyprpolkitagent/hyprpolkitagent",
    "/usr/lib/xdg-desktop-portal-hyprland",
    "/usr/lib/xdg-desktop-portal-gtk",
    "awww-daemon",
    "waybar",
    "hypridle",
    "wl-paste --type text --watch cliphist store",
    "wl-paste --type image --watch cliphist store",
  },

  env = {
    { "XCURSOR_SIZE", "24" },
    { "HYPRCURSOR_SIZE", "24" },
    { "GTK_THEME", "Adwaita-dark" },
  },

  input = {
    kb_layout = "us,ru",
    kb_variant = "",
    kb_model = "",
    kb_options = "grp:caps_toggle",
    kb_rules = "",
    follow_mouse = 1,
    sensitivity = 0,
    touchpad = {
      natural_scroll = true,
    },
  },

  gesture = {
    "3, horizontal, workspace",
    "3, up, dispatcher, focusmonitor, +1",
  },

  device = {
    {
      name = "epic-mouse-v1",
      sensitivity = -0.5,
    },
  },

  bind = {
    "$mainMod, Return, exec, $terminal",
    "$mainMod, Q, killactive,",
    "$mainMod SHIFT, M, exec, command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit",
    "$mainMod, E, exec, $fileManager",
    "$mainMod, K, togglefloating,",
    "$mainMod, B, exec, $browser",
    "$mainMod, L, exec, hyprlock",
    "$mainMod, F, fullscreen, 1",
    "$mainMod SHIFT, F, fullscreen, 0",
    "$mainMod, Space, exec, $menu",
    "$mainMod, P, pseudo,",
    "SUPER, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy",
    "$mainMod, left, movefocus, l",
    "$mainMod, right, movefocus, r",
    "$mainMod, up, movefocus, u",
    "$mainMod, down, movefocus, d",
    "$mainMod, 1, workspace, 1",
    "$mainMod, 2, workspace, 2",
    "$mainMod, 3, workspace, 3",
    "$mainMod, 4, workspace, 4",
    "$mainMod, 5, workspace, 5",
    "$mainMod, 6, workspace, 6",
    "$mainMod, 7, workspace, 7",
    "$mainMod, 8, workspace, 8",
    "$mainMod, 9, workspace, 9",
    "$mainMod, 0, workspace, 10",
    "$mainMod SHIFT, 1, movetoworkspace, 1",
    "$mainMod SHIFT, 2, movetoworkspace, 2",
    "$mainMod SHIFT, 3, movetoworkspace, 3",
    "$mainMod SHIFT, 4, movetoworkspace, 4",
    "$mainMod SHIFT, 5, movetoworkspace, 5",
    "$mainMod SHIFT, 6, movetoworkspace, 6",
    "$mainMod SHIFT, 7, movetoworkspace, 7",
    "$mainMod SHIFT, 8, movetoworkspace, 8",
    "$mainMod SHIFT, 9, movetoworkspace, 9",
    "$mainMod SHIFT, 0, movetoworkspace, 10",
    ", Print, exec, grim -g \"$(slurp)\" - | wl-copy",
    "SHIFT, Print, exec, grim - | wl-copy",
    "$mainMod, grave, focusmonitor, +1",
  },

  bindm = {
    "$mainMod, mouse:272, movewindow",
    "$mainMod, mouse:273, resizewindow",
  },

  bindel = {
    ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+",
    ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-",
    ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle",
    ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle",
    ",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+",
    ",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-",
  },

  bindl = {
    ", XF86AudioNext, exec, playerctl next",
    ", XF86AudioPause, exec, playerctl play-pause",
    ", XF86AudioPlay, exec, playerctl play-pause",
    ", XF86AudioPrev, exec, playerctl previous",
  },

  binde = {
    "$mainMod ALT, left,  resizeactive, -40 0",
    "$mainMod ALT, right, resizeactive,  40 0",
    "$mainMod ALT, up,    resizeactive,  0 -40",
    "$mainMod ALT, down,  resizeactive,  0 40",
  },

  general = {
    gaps_in = 4,
    gaps_out = 8,
    border_size = 1,
    ["col.active_border"] = "rgba(689d6ae6)",
    ["col.inactive_border"] = "rgba(3c3836aa)",
    resize_on_border = false,
    allow_tearing = false,
    layout = "dwindle",
  },

  decoration = {
    rounding = 4,
    rounding_power = 2,
    active_opacity = 0.98,
    inactive_opacity = 0.95,
    shadow = {
      enabled = true,
      range = 4,
      render_power = 3,
      color = "rgba(1a1a1aee)",
    },
    blur = {
      enabled = true,
      size = 4,
      passes = 1,
      vibrancy = 0.1696,
    },
  },

  animations = {
    enabled = true,
    bezier = {
      "easeOutQuint,   0.23, 1,    0.32, 1",
      "easeInOutCubic, 0.65, 0.05, 0.36, 1",
      "linear,         0,    0,    1,    1",
      "almostLinear,   0.5,  0.5,  0.75, 1",
      "quick,          0.15, 0,    0.1,  1",
    },
    animation = {
      "global,        1,     10,    default",
      "border,        1,     5.39,  easeOutQuint",
      "windows,       1,     4.79,  easeOutQuint",
      "windowsIn,     1,     4.1,   easeOutQuint, popin 87%",
      "windowsOut,    1,     1.49,  linear,       popin 87%",
      "fadeIn,        1,     1.73,  almostLinear",
      "fadeOut,       1,     1.46,  almostLinear",
      "fade,          1,     3.03,  quick",
      "layers,        1,     3.81,  easeOutQuint",
      "layersIn,      1,     4,     easeOutQuint, fade",
      "layersOut,     1,     1.5,   linear,       fade",
      "fadeLayersIn,  1,     1.79,  almostLinear",
      "fadeLayersOut, 1,     1.39,  almostLinear",
      "workspaces,    1,     1.94,  almostLinear, fade",
      "workspacesIn,  1,     1.21,  almostLinear, fade",
      "workspacesOut, 1,     1.94,  almostLinear, fade",
      "zoomFactor,    1,     7,     quick",
    },
  },

  dwindle = {
    pseudotile = true,
    preserve_split = true,
  },

  master = {
    new_status = "master",
  },

  misc = {
    force_default_wallpaper = 0,
    disable_hyprland_logo = true,
    vrr = 0,
  },

  windowrule = {
    {
      name = "suppress-maximize-events",
      ["match:class"] = ".*",
      suppress_event = "maximize",
    },
    {
      name = "fix-xwayland-drags",
      ["match:class"] = "^$",
      ["match:title"] = "^$",
      ["match:xwayland"] = true,
      ["match:float"] = true,
      ["match:fullscreen"] = false,
      ["match:pin"] = false,
      no_focus = true,
    },
    {
      name = "move-hyprland-run",
      ["match:class"] = "hyprland-run",
      move = "20 monitor_h-120",
      float = true,
    },
  },
}
