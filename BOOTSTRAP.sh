#!/bin/bash

sudo apt-get -y install neovim # Neovim

# Python packages
pip install ipython
pip install numpy
pip install scipy
pip install matplotlib

# Plug Vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh # Rust

sudo apt-get install neofetch # Neofetch

# Symlinks
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/nvim ~/.config
ln -sf ~/.dotfiles/neofetch ~/.config

# Check versions
nvim --version
neofetch --version