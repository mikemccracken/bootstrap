#!/bin/bash

set -x

cd $HOME

pkgs='emacs25-nox ack-grep vcsh pastebinit'

sudo apt -y install $pkgs

mkdir $HOME/.config

# get all dotfiles from github using mr

git clone https://github.com/mikemccracken/vcsh-mr.git mr

ln -s $HOME/mr/.config/mr .config/
ln -s $HOME/mr/.mrconfig 

mr up
