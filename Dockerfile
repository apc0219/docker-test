FROM java
MAINTAINER jack
RUN deb http://archive.debian.org/debian/ jessie-backports main contrib non-free
RUN deb-src http://archive.debian.org/debian/ jessie-backports main contrib non-free
RUN apt-get update
RUN apt-get install -y wget

RUN cd /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.107.tar.gz

RUN tar zxvf apache-tomcat-7.0.107.tar.gz

CMD ["/apache-tomcat-7.0.107/bin/catalina.sh", "run"]

EXPOSE 8080
