#!/bin/bash
if [ $# -ne 2 ]
then
	echo "Expected two arguments"
	exit 1
fi
writefile=$1
writestr=$2
echo $writestr > $writefile
