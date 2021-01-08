#!/bin/bash

echo Copying dotfiles
cd dotfiles
cp -r . ~/
cd ~

echo Installing base packages
sudo apt update
sudo apt -y install git build-essential curl wget openssh-server

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

echo Install Docker
sudo apt remove docker docker-engine docker.io containerd runc
curl https://get.docker.com | sh \
  && sudo systemctl start docker \
  && sudo systemctl enable docker

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker

cd ~/dotfiles

git config --global user.email "joshliu6830@gmail.com"
git config --global user.name "Joshua Liu"
git config --global core.editor "nvim"

