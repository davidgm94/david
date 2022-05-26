#!/bin/bash

sudo pacman -S git firefox telegram-desktop signal-desktop lm_sensors htop alacritty kitty wezterm discord gdb neovim ripgrep bat qemu qemu-arch-extra zig rust-analyzer rustup mpv vlc smplayer nodejs tokei nushell bash-completion libreoffice xorriso

rustup toolchain install stable

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git ~/yay-bin
cd ~/yay-bin
makepkg -si
yay -Syyu
yay -S acestream-launcher acestream-engine



