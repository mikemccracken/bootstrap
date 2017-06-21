#!/bin/bash

./start.sh

sudo apt -y install 'make gcc'

sudo snap install go --classic

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

go get -d -v github.com/juju/juju/...

cd $GOPATH/src/github.com/juju/juju/
JUJU_MAKE_GODEPS=true make godeps
make install
