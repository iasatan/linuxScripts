#!/bin/bash
# Recursively converts all HEIC files to JPG for the specified directory. Skips any files that have already
# been converted. Requires tifig, download latest  release from github: 
# https://github.com/monostream/tifig/releases and install at /usr/bin/tifig
# (or add the install location you choose to your $PATH)
#
# usage: ./heicToJpg.sh [RootDirectory]
#
rootDir=$1
if [ -z "$rootDir" ]
then
    echo "Need to specify root directory."
    exit 1
fi

find $rootDir -type f -iname "*.heic" | while read f
do
    n=$(echo $f | sed 's/.heic/.jpg/I') 

    if [ -f $n ]; then
        echo "Alredy converted. Skipping $f"
        continue
    fi

    echo "Converting $f" 
    tifig -i "$f" -o "$n" 
done
