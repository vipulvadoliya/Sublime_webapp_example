FROM java:8-jre

RUN apt-get update
RUN apt-get install tomcat
COPY --from=node target/java-tomcat-maven-example.war java-tomcat-maven-example.war
EXPOSE 9090
ENTRYPOINT ["java","-jar","java-tomcat-maven-example.war"]
