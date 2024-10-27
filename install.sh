# Create local config files for hyprland
cp hypr/.config/hypr/hyprland/monitor-template.conf hypr/.config/hypr/hyprland/monitor.conf
touch hypr/.config/hypr/hyprland/local.conf


# Add sddm themes
mkdir -p /usr/share/sddm
stow -t /usr/share/sddm sddm
