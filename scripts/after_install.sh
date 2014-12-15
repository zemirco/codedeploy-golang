#!/bin/bash

cd $GOPATH/src/github.com/zemirco/codedeploy/

# restore dependencies
godep restore

# make binary
go install
