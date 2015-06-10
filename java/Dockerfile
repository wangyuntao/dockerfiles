FROM wangyuntao/dev
MAINTAINER wyt <wyt.daily@gmail.com>

RUN \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
  -O - http://download.oracle.com/otn-pub/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz | tar -zxf - -C /opt

ENV JAVA_HOME /opt/jdk1.7.0_80
ENV CLASSPATH $JAVA_HOME/lib:.
ENV PATH $PATH:$JAVA_HOME/bin

ENV PATH $PATH:$DEV_DIR/maven/apache-maven-3.2.5/bin

RUN \
  wget -O - \
  https://github.com/google/protobuf/releases/download/v2.6.1/protobuf-2.6.1.tar.gz | \
  tar -zxf - -C /opt && \
  cd /opt/protobuf-2.6.1 && \
  ./configure && make && make install

ENV LD_LIBRARY_PATH /usr/local/lib

WORKDIR $DEV_DIR/javacode
CMD ["bash"]