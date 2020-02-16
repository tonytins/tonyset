#!/usr/bin/bash

NLTS=3.1
NPLTS=2.1

## Preperation
cd Downloads

wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
test -d $HOME/.linuxbrew && eval $($HOME/.linuxbrew/bin/brew shellenv)
test -d $HOME/linuxbrew/.linuxbrew && eval $($HOME/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r $HOME/.profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>$HOME/.profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>$HOME/.profile

## Essentials
sudo apt update -y && sudo apt upgrade -y
sudo apt install apt-transport-https && sudo apt update -y
sudo apt install -y avahi-daemon ruby libunwind-dev
git git-cola ruby dotnet-sdk-$NLTS dotnet-sdk-$NPLTS -y

## Python PIP
pip install onnxmltools