#!/bin/bash
set -e
apt-get update -y
apt-get install -y libgdbm-dev libncurses5-dev automake libtool bison libffi-dev procps wget curl rsync ssh
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
umask u=rwx,g=rwx,o=rx
source /etc/profile.d/rvm.sh
rvm install 2.4.1
rvm use 2.4.1 --default
ruby -v
gem install bundler
