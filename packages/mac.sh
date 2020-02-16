#!/usr/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Homebrew
brew update
brew install cask
brew install wget
brew install git
brew install openjdk
brew install python
brew install mono-libgdiplus
brew cast install cakebrew
brew cast install gog-galaxy
brew cast install dotnet-sdk
brew cast install visual-studio-code
brew cast install brave-browser

## Python PIP
pip install onnxmltools