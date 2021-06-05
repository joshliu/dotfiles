#!/bin/bash

echo "Diffing dotfiles and \$HOME..."
sleep 1
diff -r ../dotfiles ~ | grep -v "^Only in \/home\/"

read -p "Proceed? (y/n)" RESP
echo
if [[ $RESP =~ ^[Yy]$ ]]
then
    echo Copying dotfiles...
    cd ../dotfiles
    cp -r . ~/
    cd -
fi

