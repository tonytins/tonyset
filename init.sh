#!/usr/bin/env bash

if [ ! -d "$HOME/.ssh" ]; then
  mkdir $HOME/.ssh
fi

if [ ! -d "$HOME/bin" ]; then
  mkdir $HOME/bin
fi

if [ ! -f "$HOME/.profile" ]; then
    ln -sv $HOME/antset/user/.profile $HOME/.profile
fi

if [ ! -f "$HOME/.gitconfig" ]; then
    ln -sv $HOME/antset/user/.gitconfig $HOME/.gitconfig
fi

if [ ! -f "$HOME/.gitignore_global" ]; then
    ln -sv $HOME/antset/user/.gitignore_global $HOME/.gitignore_global
fi

if [ ! -f "$HOME/.wgetrc" ]; then
    ln -sv $HOME/antset/user/.wgetrc $HOME/.wgetrc
fi

if [ ! -f "$HOME/.curlrc" ]; then
    ln -sv $HOME/antset/user/.curlrc $HOME/.curlrc
fi

if [ ! -f "$HOME/.nanorc" ]; then
    ln -sv $HOME/antset/user/.nanorc $HOME/.nanorc
fi
