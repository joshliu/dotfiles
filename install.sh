#!/bin/bash

DOTFILES_DIR=$(dirname $0)
PLATFORM=$1

if [ -z "$PLATFORM" ]
then
    PLATFORM=ubuntu
fi

/bin/bash $DOTFILES_DIR/$PLATFORM/install.sh

