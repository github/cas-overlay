#!/bin/sh
#

$CATALINA_HOME/bin/shutdown.sh
cd /opt/cas-overlay
mvn clean package
rm -rf $CATALINA_HOME/logs/*
rm -f $CATALINA_HOME/webapps/cas.war
rm -rf $CATALINA_HOME/webapps/cas
rm -rf $CATALINA_HOME/work/*
# cp -v target/cas.war $CATALINA_HOME/webapps
echo "WARN: Make sure the cas.xml in the root directory points to the cas.war file!"
cp -v cas.xml $CATALINA_HOME/conf/Catalina/localhost
rm -rf /etc/cas/logs/*
rm -rf /var/logs/cas/*
$CATALINA_HOME/bin/startup.sh