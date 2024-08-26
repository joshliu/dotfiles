#!/bin/bash
#

echo Installing base packages
sudo apt update
sudo apt install -y openconnect network-manager-openconnect network-manager-openconnect-gnome
