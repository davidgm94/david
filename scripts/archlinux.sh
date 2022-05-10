#!/bin/bash

sudo pacman -S git github-cli firefox telegram-desktop signal-desktop lm_sensors htop alacritty kitty discord gdb neovim ripgrep bat qemu qemu-arch-extra zig rust-analyzer rustup mpv vlc smplayer nodejs wl-clipboard foot dmenu

rustup toolchain install stable

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git ~/yay-bin
cd ~/yay-bin
makepkg -si

yay -S river acestream-launcher acestream-engine

# Install League of Legends
#Activate multilib
sudo pacman -S lib32-vulkan-validation-layers lib32-vulkan-icd-loader lib32-vulkan-intel lib32-vkd3d wine


