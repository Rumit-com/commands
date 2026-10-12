#!/usr/bin/env bash
set -Eeuo pipefail

sudo pacman -Syu --needed cups cups-filters ghostscript gutenprint system-config-printer avahi
sudo systemctl enable --now cups.service avahi-daemon.service
