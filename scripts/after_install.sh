#!/bin/bash

# set golang path for current shell and for reboot etc.
echo 'export PATH=$PATH:/home/ubuntu/go/bin' >> ~/.bashrc

# make golang workspace
cd /home/ubuntu
mkdir gocode
echo 'export GOPATH=$HOME/gocode' >> ~/.bashrc
echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.bashrc

# activate changes
source ~/.bashrc

# install golang dependency management tool
go get github.com/tools/godep

# go to golang app
cd $GOPATH/src/github.com/zemirco/codedeploy/

# restore dependencies
godep restore

# make binary
go install
