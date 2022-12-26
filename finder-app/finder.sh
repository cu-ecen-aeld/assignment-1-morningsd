#!/usr/bin/bash

#check for arguments
if [[ $# -ne 2 ]]; then 
	echo "error missing argument" 
	exit 1
fi
#verify first argument
if [[ -d $1 ]]; then
	:
else 
	echo "directory does not exist"
	exit 1
fi

xs=$( grep -lZ "$2" $1/* | tr -cd '\000' | wc -c )

ys=$( grep -cZ "$2" $1/* | tr -cd '\000' | wc -c )
echo "The number of files are ${xs} and the number of matching lines are ${ys}"
