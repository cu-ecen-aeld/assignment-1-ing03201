#!/bin/bash
## check argument
if [ -z $1 ] || [ -z $2 ]; then
	echo "Two arguments are required\n first argument is file path include file name\n second argument is text string to be written to first argument\n"
	exit 1
fi
writefile=$1
writestr=$2
echo $writestr > $writefile	
if [ $? -ne 0 ]; then
	echo "file could not be created"
fi
