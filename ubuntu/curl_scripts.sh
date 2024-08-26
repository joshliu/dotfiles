#!/bin/bash

echo zimfw install
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

echo fzf install
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo Installing Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
