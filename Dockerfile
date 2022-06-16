FROM tomcat:9.0.64-jre8-temurin-focal
RUN apt update -y && apt install -y vim
RUN mv -v /usr/local/tomcat/webapps /usr/local/tomcat/webapps2
RUN mv -v /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps
RUN rm -f /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY ./context.xml /usr/local/tomcat/webapps/manager/META-INF
COPY ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
