FROM centos:centos7.9.2009
RUN yum install java-1.8.0-openjdk -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz .
RUN tar -xzf apache-tomcat-9.0.69.tar.gz
COPY target/vprofile-v1.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
