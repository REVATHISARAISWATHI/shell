#!/bin/sh
sudo yum install java

wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.49/bin/apache-tomcat-8.5.49.tar.gz

tar -xvzf apache-tomcat-8.5.49.tar.gz

rm -rf apache-tomcat-8.5.49.tar.gz

sed -i 's/port="8080"/port="8880"/' apache-tomcat-8.5.49/conf/server.xml

sed -i 's\</tomcat-users>\<!-- -->\g' apache-tomcat-8.5.49/conf/tomcat-users.xml

echo '<role rolename="manager-gui" />' >> apache-tomcat-8.5.49/conf/tomcat-users.xml
echo '<role rolename="manager-script" />' >> apache-tomcat-8.5.49/conf/tomcat-users.xml
echo '<user username="admin" password="admin" roles="manager-gui,manager-script" />' >> apache-tomcat-8.5.49/conf/tomcat-users.xml
echo '</tomcat-users>' >> apache-tomcat-8.5.49/conf/tomcat-users.xml



sed -i 's/<Valve /<!-- <Valve /' apache-tomcat-8.5.49/webapps/manager/META-INF/context.xml

sed -i 's\:1" />\:1" /> -->\g' apache-tomcat-8.5.49/webapps/manager/META-INF/context.xml


apache-tomcat-8.5.49/bin/./startup.sh
