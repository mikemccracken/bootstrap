#!/bin/bash

pkgs='zsh emacs24 ack-grep vcsh'


for pkg in $pkgs
do
echo sudo apt get install $pkg
done

# get all dotfiles from github using mr

git clone https://github.com/mikemccracken/vcsh-mr.git mr

mr up

# get cask for emacs deps

git clone https://github.com/cask/cask.git ~/.cask

( cd .emacs.d && $HOME/.cask/bin/cask )
