#!/bin/bash

DATADIR=data

if [ $# -ne 1 ]
then
    echo "Usage: get.sh <level>"
    exit 1
fi

wgets() {
    for file in $1/*.wget
    do
        filename=$(basename -- "$file")
        extension="${filename##*.}"
        filename="${filename%.*}"
        prefix=$DATADIR/$filename
        mkdir -p $prefix
        wget --mirror -nH -P $prefix -i $file
    done
}

mkdir -p $DATADIR

for level in $(seq 0 $1)
do
    levelDir=sources/$level
    if [ ! -d $levelDir ]
    then
        echo "No files for level $level"
    else
        wgets $levelDir $level
    fi
done