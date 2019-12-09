#!/bin/sh
echo "enter software name :"
read var
sudo service $var stop
sudo yum remove $var
