#!/bin/bash

set -e

echo "[+] Installing required packages..."
sudo apt update
sudo apt install -y \
	xorg bspwm sxhkd kitty rofi feh picom lxappearance \
	network-manager neovim git fish polybar \
	open-vm-tools open-vm-tools-desktop

echo "[+] Wallpaper setup skipped (manual or script download needed)"
# More automation coming soon...
