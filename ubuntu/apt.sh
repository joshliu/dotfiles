#!/bin/bash

echo Installing base packages
sudo apt update
sudo apt -y install \
    git \
    build-essential \
    curl \
    wget \
    openssh-server \
    gdb \
    cmake

echo Installing user tools
sudo apt -y install \
    tmux \
    xcape

echo Installing extras
sudo apt -y install htop \
    linux-tools-common \
    linux-tools-generic \
    ripgrep

echo zsh install
sudo apt -y install zsh
