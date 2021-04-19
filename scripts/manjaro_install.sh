#!/bin/sh

# copy .ssh files
sudo chmod 700 ~/.ssh
sudo chmod 600 ~/.ssh/id_ed25519
sudo chmod 644 ~/.ssh/id_ed25519.pub
sudo chmod 644 ~/.ssh/authorized_keys
sudo chmod 644 ~/.ssh/known_hosts
sudo chmod 644 ~/.ssh/config
# go fecth that SSH password
ssh-add
mkdir -p $HOME/git
git clone git@github.com:davidgm94/david.git $HOME/git/david
sudo rsync -a $HOME/git/david $HOME
sudo pacman -S tilix rustup lldb gdb gvim nodejs npm brave tree code llvm make cmake nemiver
# make Whatsapp shortcut
# config rustup
rustup default stable
# confix tilix

