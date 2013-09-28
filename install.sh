#!/bin/bash

function print_help()
{
	echo ""
	echo "This is a skeleton installation script. The skeleton itself \
should be specified by the parameters. First parameter is action, second \
is it's argument."
	echo ""
	echo "Possible skeletons:"
	echo "1. lua"
	echo "2. c/exec"
	echo "3. c/shared-library"
	echo "3. c++"
}


function install()
{
	cp -r "$1" "$2"
}

if [ "$1" == "-h" ]; then
	print_help
elif [ "$1" == "-i" ]; then
	install $2 $3
fi
