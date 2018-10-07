FROM tomcat:8.0.43-jre8
ADD /home/vsts/work/1/s/target/java-tomcat-maven-example.war /usr/local/tomcat/webapps/
EXPOSE 9090
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
