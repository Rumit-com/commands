#!/usr/bin/env bash
set -Eeuo pipefail

sudo sed -i '/^#\[multilib\]$/,/^#Include = \/etc\/pacman.d\/mirrorlist$/ { s/^#\[multilib\]$/[multilib]/; s/^#Include = \/etc\/pacman.d\/mirrorlist$/Include = \/etc\/pacman.d\/mirrorlist/; }' /etc/pacman.conf
sudo pacman -Syu --needed steam wine winetricks pciutils gamemode lib32-gamemode mangohud lib32-mangohud vulkan-tools vulkan-icd-loader lib32-vulkan-icd-loader vulkan-radeon lib32-vulkan-radeon lib32-nvidia-utils
