#!/bin/bash

SOURCE_DIR=/tmp/app-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ -d $SOURCE_DIR ]
then
    echo -e "$G Source directory exists $N"
else
    echo -e "$R Please make sure  $SOURCE_DIR exists $N"
    exit 1
fi    

FILES=$(find $SOURCE_DIR -name *.log -mtime +14)

echo "The files are to delete: $FILES"