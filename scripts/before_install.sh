#!/bin/bash

apt-get update -y
apt-get upgrade -y

# install dependencies
apt-get install mercurial git gcc libc6-dev -y

# install golang
cd /home/ubuntu
hg clone -u release https://code.google.com/p/go
cd go/src
./all.bash
