#!/usr/bin/env bash
set -Eeuo pipefail

sudo pacman -Syu --needed base-devel git cmake ninja meson pkgconf gcc clang lldb gdb binutils make python python-pip python-virtualenv strace valgrind curl wget unzip zip

