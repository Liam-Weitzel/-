#!/bin/bash

SCRIPTS_PATH="$HOME/.bash_scripts"
cd "$SCRIPTS_PATH"

if [ `find ./ -type f | wc -l` == "0" ]; then #empty scripts folder
	exit 0;
fi

script=`find ./ -type f | cut -d '/' -f 2- | sort | dmenu $@`

if [ "x$script" == "x" ] || [ "$script" == "dmenu_custom.sh" ]; then
  exit 1
fi

sudo ./"$script"
exit $?
