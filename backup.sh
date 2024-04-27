#!/bin/bash

BACKUP_DIR=/tmp
DATE=$(date +%F)
FILE_PATH=/tmp/ram
FILE_NAME=websphere

if [ -d ${BACKUP_DIR}/${FILE_NAME}-${DATE}.tar.gz  ]
then
    echo "file is already exists"
    ls -lrth ${BACKUP_DIR}/${FILE_NAME}-${DATE}.tar.gz
else 
    echo "Backup file is not there, Taking the backup"
    tar -cvzf ${BACKUP_DIR}/${FILE_NAME}-${DATE}.tar.gz $FILE_NAME
fi