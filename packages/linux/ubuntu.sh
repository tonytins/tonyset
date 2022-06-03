#!/bin/bash

## Essentials
sudo apt update -y && sudo apt upgrade -y
cat packages.txt | xargs sudo apt install -y
cat snaps.txt | xargs sudo snap install

## Fixes
sudo snap alias dotnet-sdk.dotnet dotnet

## Tools
dotnet tool install -g mlnet
pip install onnxmltools