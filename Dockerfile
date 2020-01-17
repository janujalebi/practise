FROM tomcat:8
MAINTAINER SANTOSH SM
# Take the war and copy to webapps of tomcat
WORKDIR /usr/local/tomcat
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY **/target/*.war /usr/local/tomcat/webapps
