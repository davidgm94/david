#!/bin/bash

sudo pacman -S git github-cli firefox telegram-desktop signal-desktop lm_sensors htop alacritty kitty discord gdb neovim ripgrep bat qemu qemu-arch-extra zig rust-analyzer rustup mpv vlc smplayer nodejs dmenu

rustup toolchain install stable

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git ~/yay-bin
cd ~/yay-bin
makepkg -si

yay -S acestream-launcher acestream-engine



