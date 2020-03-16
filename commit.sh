#!/bin/bash

ls -d */ > ./dir.txt
file='dir.txt'
while read line; do
echo "$line"
cd $line
helm package ./
cd ../
done < $file
rm -rf ./dir.txt
