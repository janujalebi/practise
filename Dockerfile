FROM tomcat
MAINTAINER aftab khan
RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

ADD SampleWebApp.war /usr/local/tomcat/webapps/

CMD ["catalina.sh" ,"run"]
