#!/bin/bash

words=$(cat words.txt)

while read count name
do
        if [ ${count} -gt 1 ]
        then
                echo "${name} ${count}"
        fi
done <<< $words




count=$(cat /tmp/ram/files.txt)

while read count name
do
        if [ ${count} > 1 ]
        then
                echo "${name} ${count}"
        fi
done <<< $count