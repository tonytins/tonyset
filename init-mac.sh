#!/bin/zh

if [ ! -d "$HOME/.ssh" ]; then
    mkdir $HOME/.ssh
fi

if [ ! -f "$HOME/.gitconfig" ]; then
    cp user/.gitconfig $HOME/.gitconfig
fi

if [ ! -f "$HOME/.gitignore" ]; then
    cp .gitignore $HOME/.gitignore_global
fi