#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

# install dependencies
sudo apt-get install mercurial git gcc libc6-dev -y

# install golang
cd /home/ubuntu
hg clone -u release https://code.google.com/p/go
cd go/src
./all.bash

# set golang path
echo 'export PATH=$PATH:/home/ubuntu/go/bin' >> /home/ubuntu/.bashrc

# make golang workspace
cd /home/ubuntu
mkdir gocode
echo 'export GOPATH=$HOME/gocode' >> /home/ubuntu/.bashrc
echo 'export PATH=$PATH:$GOPATH/bin' >> /home/ubuntu/.bashrc

# activate changes
source /home/ubuntu/.bashrc
