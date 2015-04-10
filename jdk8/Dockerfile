#
# JDK8 Dockerfile
# 

FROM wangyuntao/ubuntu

MAINTAINER wyt <wyt.daily@gmail.com>

RUN \
  apt-get update && \
  apt-get install -y wget && \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
  -O - http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.tar.gz | tar -zxf - -C /opt && \
  apt-get purge -y wget && \
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /opt/jdk1.8.0_40
ENV CLASSPATH $JAVA_HOME/lib:.
ENV PATH $PATH:$JAVA_HOME/bin

CMD ["bash"]