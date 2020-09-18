#!/bin/sh
FILE="/test/hello.txt"

while [ ! -e $FILE ]
do
    sleep 2
done
cp -R /test/* /data

