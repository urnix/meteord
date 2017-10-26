#!/bin/bash
set -e
apt-get update -y
apt-get install -y curl bzip2 build-essential g++ python git libcairo2-dev libjpeg62-dev libpango1.0-dev libgif-dev libssl-dev wget unzip ffmpeg
wget https://github.com/AGWA/git-crypt/archive/master.zip && unzip master.zip && cd git-crypt-master && make install

# ffmpeg
apt-get install -y ffmpeg

# graphicsmagick-1.3.26
apt-get install -y wget dpkg-dev
wget https://launchpadlibrarian.net/341012792/graphicsmagick_1.3.26-15.dsc
wget https://launchpad.net/ubuntu/+archive/primary/+files/graphicsmagick_1.3.26.orig.tar.xz
wget https://launchpad.net/ubuntu/+archive/primary/+files/graphicsmagick_1.3.26-15.debian.tar.xz
dpkg-source -x graphicsmagick_1.3.26-15.dsc
cd graphicsmagick-1.3.26/
./configure
make
make install
