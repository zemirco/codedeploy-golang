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

# set golang path for current shell and for reboot etc.
export PATH=$PATH:/home/ubuntu/go/bin
echo 'export PATH=$PATH:/home/ubuntu/go/bin' >> /home/ubuntu/.bashrc

# make golang workspace
cd /home/ubuntu
mkdir gocode
export GOPATH=/home/ubuntu/gocode
export PATH=$PATH:$GOPATH/bin
echo 'export GOPATH=$HOME/gocode' >> /home/ubuntu/.bashrc
echo 'export PATH=$PATH:$GOPATH/bin' >> /home/ubuntu/.bashrc
