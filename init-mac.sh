#!/usr/bin/bash

if [ ! -f "$HOME/.gitconfig" ]; then
    cp /user/.gitconfig $HOME/.gitconfig
fi

if [ ! -f "$HOME/.wgetrc" ]; then
    cp /user/.wgetrc $HOME/.wgetrc
fi

if [ ! -f "$HOME/.nanorc" ]; then
    cp /user/.nanorc $HOME/.nanorc
fi