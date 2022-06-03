#!/bin/bash

if [ ! -d "$HOME/.ssh" ]; then
    mkdir $HOME/.ssh
fi

if [ ! -d "$HOME/bin" ]; then
    mkdir $HOME/bin
fi

if [ ! -f "$HOME/.profile" ]; then
    cp user/.profile $HOME/.profile
fi

if [ ! -f "$HOME/.gitconfig" ]; then
    cp user/.gitconfig $HOME/.gitconfig
fi

if [ ! -f "$HOME/.wgetrc" ]; then
    cp user/.wgetrc $HOME/.wgetrc
fi

if [ ! -f "$HOME/.nanorc" ]; then
    cp user/.nanorc $HOME/.nanorc
fi

if [ ! -f "$HOME/.gitignore" ]; then
    cp .gitignore $HOME/.gitignore_global
fi