#!/bin/bash
# Absolute path to this script, e.g. /home/user/bin/foo.sh
cd "$(dirname "$0")"
dir=`pwd`

function symlink() {
    ln -sfFv $1 $2
}

#This script is responsible for creating/updating any symlinks to be
#made in the home directory upon running bootstrap.sh

#symlink ${dir}/.vim/ ~/.vim
symlink ${dir}/.vim/.vimrc ~/.vimrc
symlink ${dir}/.vim/.gvimrc ~/.gvimrc
#symlink ${dir}/.irssi/ ~/.irssi
