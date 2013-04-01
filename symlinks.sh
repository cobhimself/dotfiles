#!/bin/bash
# Absolute path to this script, e.g. /home/user/bin/foo.sh
cd "$(dirname "$0")"
dir=`pwd`

function symlink() {
    echo $1 => $2
    ln -sfF $1 $2
}

#This script is responsible for creating/updating any symlinks to be
#made in the home directory upon running bootstrap.sh

symlink ${dir}/.vim/ ~/.vim
symlink ${dir}/.vimrc ~/.vimrc
symlink ${dir}/.multitail.conf ~/.multitail.conf
#symlink ${dir}/.irssi/ ~/.irssi
