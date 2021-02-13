#!/bin/bash

echo Installing base packages
sudo apt update
sudo apt -y install git build-essential curl wget openssh-server gdb cmake

echo Installing user tools
sudo apt -y install vim neovim tmux i3 xcape

echo Installing extras
sudo apt -y install htop linux-tools-common linux-tools-generic ripgrep

echo zsh install
sudo apt -y install zsh
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

echo neovim vim-plug install
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo fzf install
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

