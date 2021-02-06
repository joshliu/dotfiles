#!/bin/bash

/bin/bash dotfiles.sh

# uncomment the version you want (ubuntu default)

/bin/bash ubuntu.sh
#/bin/bash macos.sh

# extra setup
echo Installing Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

git config --global user.email "joshliu6830@gmail.com"
git config --global user.name "Joshua Liu"
git config --global core.editor "nvim"

