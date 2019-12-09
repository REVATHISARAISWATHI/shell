#!/bin/sh
echo "enter software name to uninstall:"
read var
sudo service $var stop
sudo yum remove $var
