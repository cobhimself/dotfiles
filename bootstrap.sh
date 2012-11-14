#!/bin/bash
cd "$(dirname "$0")"
git pull
function doIt() {
	rsync -av --exclude-from=bootstrapExcludeList.txt . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
    ./symlinks.sh
	fi
fi
unset doIt
source ~/.bash_profile
