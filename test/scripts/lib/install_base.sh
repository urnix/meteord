#!/bin/bash
set -e
apt-get update -y
apt-get install -y curl bzip2 build-essential python git graphicsmagick libcairo2-dev libjpeg62-dev libpango1.0-dev libgif-dev g++ libssl-dev wget unzip
wget https://github.com/AGWA/git-crypt/archive/master.zip && unzip master.zip && cd git-crypt-master && make install
