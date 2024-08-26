#!/bin/bash

set -e

sudo apt install -y fuse
curl -L "https://github.com/neovim/neovim/releases/download/v0.10.1/nvim.appimage" -o /tmp/nvim

echo "c4762d54cadfd9fa4497c7969197802c9cf9e0d926c39e561f0bd170e36c8aa0 /tmp/nvim" | sha256sum -c
chmod +x /tmp/nvim
sudo mv /tmp/nvim /usr/local/bin/nvim

