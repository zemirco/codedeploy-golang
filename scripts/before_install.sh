#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

# install dependencies
sudo apt-get install mercurial git gcc libc6-dev -y

# install golang
hg clone -u release https://code.google.com/p/go
cd go/src
./all.bash

# set golang path
echo 'export PATH=$PATH:/home/ubuntu/go/bin' >> ~/.profile

# make golang workspace
cd ~
mkdir gocode
echo 'export GOPATH=$HOME/gocode' >> ~/.profile
echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.profile

# activate changes
source ~/.profile

# install golang dependency management tool
go get github.com/tools/godep
