#!/bin/bash

BACKUP_DIR="/tmp/ram/archive"
FILE_PATH=/tmp/ram
FILE_NAME="websphere"
DATE=$(date +%F)

if [ -f ${BACKUP_DIR}/${FILE_NAME}-${DATE}.tar.gz  ]
then
    echo "file is already exists"
    ls -1 ${BACKUP_DIR}/${FILE_NAME}-${DATE}.tar.gz
else 
    echo "Backup file is not there, Taking the backup"
    tar -cvzf ${BACKUP_DIR}/${FILE_NAME}-${DATE}.tar.gz $FILE_PATH/$FILE_NAME
    ls -1 ${BACKUP_DIR}/${FILE_NAME}-${DATE}.tar.gz
fi