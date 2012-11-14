#!/bin/bash
# Absolute path to this script, e.g. /home/user/bin/foo.sh
cd "$(dirname "$0")"
dir=`pwd`
echo $dir
#This script is responsible for creating/updating any symlinks to be
#made in the home directory upon running bootstrap.sh
ln -sfF ${dir}/.vim ~/.vim
ln -sfF ${dir}/.vimrc ~/.vimrc
ln -sfF ${dir}/.irssi ~/.irssi
