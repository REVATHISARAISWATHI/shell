#!bin/sh
echo "enter the path of the file to delete:"
read var
cd $var
rm -rf $var
