#!/bin/sh
echo "enter the path of the file to delete:"
read var
x="find / -name "$var""
eval "$x"
y=$(eval "$x")
cd $y
rm -rf 
