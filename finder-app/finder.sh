#!/bin/bash
if [ $# -ne 2 ]
then
	echo "Expected two arguments"
	exit 1
fi
filesdir=$1
searchstr=$2
if [ ! -d $filesdir ]
then
	echo "Invalid directory"
	exit 1
fi
xfiles=$(find $filesdir -type f | wc -l)
yfiles=$(grep -r $searchstr $filesdir | wc -l)
echo "The number of files are ${xfiles} and the number of matching lines are ${yfiles}"
