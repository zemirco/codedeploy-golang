#!/bin/bash

# install golang dependency management tool
go get github.com/tools/godep

cd $GOPATH/src/github.com/zemirco/codedeploy/

# restore dependencies
godep restore

# make binary
go install
