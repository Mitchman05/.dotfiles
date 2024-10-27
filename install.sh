# Create local config files for hyprland
cp hypr/.config/hypr/hyprland/monitor-template.conf hypr/.config/hypr/hyprland/monitor.conf
touch hypr/.config/hypr/hyprland/local.conf

# Install yay
pacman -S yay

# Install dependencies
yay -S --needed - < ./dependencies/*.txt

# Stow dotfiles directories
stow --adopt ags fastfetch fcitx5 fish gammastep kitty misc nvim rofi waybar

# Add sddm themes
mkdir -p /usr/share/sddm
stow --adopt -t /usr/share/sddm sddm

# Force dotfiles to revert to repo
git restore .
