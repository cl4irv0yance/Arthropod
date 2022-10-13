#!/bin/bash


if [ "$1" == "" ]
then
echo "Please enter the ip in the following format: 192.168.1"

else

for subnet; do
 fping -g -r 1 $1.0/24 2>/dev/null | tee "$1"subnet.txt 
done
