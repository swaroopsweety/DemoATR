FROM ubuntu:18.04 
MAINTAINER "Anees Ravid khan <<anees.khan506@gmail.com>>"
RUN apt update
RUN apt install -y openjdk-8-jdk
# ENV JAVA_HOME /usr
ADD apache-tomcat-9.0.27.tar.gz /root
COPY target/DemoATR.war /root/apache-tomcat-9.0.27/webapps
ENTRYPOINT /root/apache-tomcat-9.0.27/bin/startup.sh && bash

