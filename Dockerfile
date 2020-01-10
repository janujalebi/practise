FROM tomcat
WORKDIR /usr/local/tomcat
COPY SampleWebApp.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]

