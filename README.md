<p align="center">
  <img src="preview.png" alt="screenshot" width="800" />
</p>

## Components

Hyprland · uwsm · fish · waybar · swaync · vicinae · kitty · hyprlock · snapper · awww

pcmanfm / yazi · Amd Drivers · 64gram (telegram) · vesktop (discord) · spotify · micro · zed · fastfetch · opencode


## Installation

```bash
sudo pacman -S --needed - < pkglist.txt
```
Symlink the configs:

> [!WARNING]
> The commands below replace existing files at the destination paths.
> Back up your current configs first.

```bash
cp -r ~/.config ~/.config.bak.$(date +%Y%m%d-%H%M%S%N)
sudo cp -r /etc/snapper/configs /etc/snapper/configs.bak.$(date +%Y%m%d-%H%M%S%N)

ln -sfn ~/hyprland-dotfiles/.config/* ~/.config/
ln -sfn ~/hyprland-dotfiles/etc/snapper/configs/* /etc/snapper/configs/
ln -sfn ~/hyprland-dotfiles/.local/share/vicinae/themes/* ~/.local/share/vicinae/themes/
```
