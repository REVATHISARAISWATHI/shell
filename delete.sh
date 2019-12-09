#!/bin/sh
echo "enter the path of the file to delete:"
read var
p=find / -name "$var"
cd $p
rm -rf $p
