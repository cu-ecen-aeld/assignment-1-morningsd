#!/usr/bin/bash

#check for arguments
if [[ $# -ne 2 ]]; then 
	echo "error missing argument" 
	exit 1
fi
mkdir -p $(dirname "$1")
echo $2 > $1

