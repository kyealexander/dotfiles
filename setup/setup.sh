#!/bin/bash

set -e

# --- Update + Install all needed packages
echo "[+] Installing required packages..."
sudo apt update && sudo apt install -y \
	xorg bspwm sxhkd kitty rofi feh picom lxappearance \
	network-manager neovim git fish polybar \
	open-vm-tools open-vm-tools-desktop

# --- Ensure config directories exist
echo "[+] Creating config directories..."
mkdir -p ~/.config/{bspwm,sxhkd,polybar,fish}

# --- Symlink dotfiles configs
echo "[+] Linking config files..."
ln -sf ~/dotfiles/.xinitrc ~/.xinitrc
ln -sf ~/dotefiles/config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc
ln -sf ~/dotefiles/config/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
ln -sf ~/dotefiles/config/polybar/config.ini ~/.config/polybar/config.ini
ln -sf ~/dotefiles/config/polybar/launch.sh ~/.config/polybar/launch.sh
ln -sf ~/dotefiles/config/fish/config.sh ~/.config/fish/config.fish

# --- Set fish as default shell
echo "[+] Setting fish as default shell..."
command -v fish | sudo tee -a /etc/shells
chsh -s $(command -v fish)

# --- Enable VMware Tools 
sudo systemctl start vmtoolsd || true

# --- Wallpaper note
echo "[+] Wallpaper setup skipped (WIP)"

echo "[+] Setup complete. You can now run `startx` to launch BSPWM."

# More automation coming soon...
