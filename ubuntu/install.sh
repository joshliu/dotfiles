#!/bin/bash

UBUNTU_DIR=$(dirname $0)
cd $UBUNTU_DIR

echo Installation may use root privileges. Ctrl-C to cancel.
sudo ls

echo Running Ubuntu setup script...

function confirm_run_script {
    read -p "Run $1? (y/n): " RESP
    if [[ $RESP =~ ^[Yy]$ ]]
    then
        /bin/bash $1
    fi
}

#confirm_run_script apt.sh
#confirm_run_script curl_scripts.sh
#confirm_run_script config.sh
#confirm_run_script docker.sh
#confirm_run_script dotfiles.sh
#confirm_run_script i3.sh
#confirm_run_script vpn.sh
confirm_run_script test.sh


