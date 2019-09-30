#!/usr/bin/env bash

wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add - && \
sudo apt install -y software-properties-common && \
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/  && \
sudo apt-get update && apt-get install adoptopenjdk-8-hotspot adoptopenjdk-11-hotspot
