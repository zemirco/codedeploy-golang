#!/bin/bash

# set golang path
echo "export PATH=$PATH:/home/ubuntu/go/bin" >> $HOME/.bashrc

# make golang workspace
cd $HOME
mkdir gocode
echo "export GOPATH=$HOME/gocode" >> $HOME/.bashrc
echo "export PATH=$PATH:$GOPATH/bin" >> $HOME/.bashrc

# activate changes
source $HOME/.bashrc

# install golang dependency management tool
go get github.com/tools/godep

# go to golang app
cd $GOPATH/src/github.com/zemirco/codedeploy/

# restore dependencies
godep restore

# make binary
go install
