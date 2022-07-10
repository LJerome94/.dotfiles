#!/bin/bash

# As of now this script as to be run from the .dotfiles directory.

# Apps
log_file="install_log.txt" # TODO Change this to handle absolute path
touch "$log_file"

sudo apt-get -y install neovim # Neovim
if type -p neovim > /dev/null; then
    echo "neovim installed" >> "$log_file"
else 
    echo "neovim failed to install" >> "$log_file"
fi

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh # Rust

#sudo apt-get install neofetch

# Symlinks
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/nvim ~/.config
