#!/bin/bash

FILES=".gitconfig .zshrc .p10k.zsh .oh-my-zsh"

for FILE in $FILES
do
    if [ -e "/home/bronsen/$FILE" ]
    then
        echo "$FILE exists"
    else
        ln -s "/home/bronsen/.dotfiles/$FILE" "/home/bronsen/$FILE"
        echo "Linked $FILE to home directory"
    fi
done
