#!/bin/sh
sudo su
sudo  yum update -y
yum install java-1.8.0
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
yum install -y jenkins
service jenkins start



echo "initial admin password"

cat  /var/lib/jenkins/secrets/initialAdminPassword
