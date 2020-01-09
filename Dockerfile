FROM tomcat
WORKDIR /usr/local/tomcat
ADD tomcat-user.xml /usr/local/tomcat/connf
CMD ["catalina.sh", "run"]

