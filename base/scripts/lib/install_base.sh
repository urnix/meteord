#!/bin/bash
set -e
apt-get update -y
apt-get install -y curl bzip2 build-essential g++ python git libcairo2-dev libjpeg62-dev libpango1.0-dev libgif-dev graphicsmagick libssl-dev wget unzip ffmpeg
wget https://github.com/AGWA/git-crypt/archive/master.zip && unzip master.zip && cd git-crypt-master && make install
