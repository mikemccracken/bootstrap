#!/bin/bash

set -x

cd $HOME

pkgs='zsh emacs24 ack-grep vcsh pastebinit python-virtualenv python3-virtualenv'

sudo apt install $pkgs

mkdir $HOME/.config

# get all dotfiles from github using mr

git clone https://github.com/mikemccracken/vcsh-mr.git mr

ln -s $HOME/mr/.config/mr .config/
ln -s $HOME/mr/.mrconfig 

mr up
