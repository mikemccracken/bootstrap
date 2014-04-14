#!/bin/bash

set -x

cd $HOME

pkgs='zsh emacs24 ack-grep vcsh'

sudo apt-get install $pkgs


# get all dotfiles from github using mr

git clone https://github.com/mikemccracken/vcsh-mr.git mr

ln -s $HOME/mr/.config/mr .config/
ln -s $HOME/mr/.mrconfig 

mr up

# get cask for emacs deps

git clone https://github.com/cask/cask.git ~/.cask

( cd .emacs.d && $HOME/.cask/bin/cask )
