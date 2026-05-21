return {
  monitor = {
    "eDP-1, 1920x1080@60, 0x0, 1",
  },

  variables = {
    terminal = "kitty",
    fileManager = "kitty yazi",
    menu = "rofi -show drun -modes \"drun,calc\"",
    browser = "zen-browser",
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

  source = {
    "~/.config/hypr/custom/*.lua",
  },
}
