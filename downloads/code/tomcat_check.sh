echo ========================================
date
cd /root/script
rm -f index.html
wget -T 10 -t 3 -q http://127.0.0.1:8080/
if [ ! -e index.html ]; then
export JAVA_HOME=/usr/java/jdk1.6.0_38
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar
export CATALINA_HOME=/usr/local/tomcat
export PATH=$JAVA_HOME/bin:$PATH

echo "restart tomcat."
${CATALINA_HOME}/bin/shutdown.sh
sleep 150
kill -9 `ps aux|grep java|grep -v grep|awk '{print $2}'`
sleep 5
${CATALINA_HOME}/bin/startup.sh
sleep 5
else
echo "checked."
fi
