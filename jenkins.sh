#!/bin/sh
sudo  yum update -y
yum install java-1.8.0
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
yum install -y jenkins
service jenkins start
sudo iptables -A INPUT -p tcp -m tcp --deport 8080 -j ACCEPT
sudo service iptables save
sudo service iptables restart

echo "initialAdminPassword"
cat /var/lib/jenkins/secrets/initialAdminPassword
