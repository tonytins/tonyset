#!/bin/zh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo launchctl config user path "/usr/local/bin:$PATH"

## Homebrew
brew update
cat formulas.txt | xargs brew install
cat casks.txt | xargs brew cask install

## Tools
dotnet tool install -g mlnet
pip install onnxmltools
