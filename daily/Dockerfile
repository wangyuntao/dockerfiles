#
# My Daily Dockerfile
#
# by wyt
#

# Pull base image
FROM ubuntu:latest

# Maintainer
MAINTAINER wyt <wyt.daily@gmail.com>

# Set timezone and locale
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# Install
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y python-software-properties && \
  apt-get install -y man wget curl vim unzip tree tmux git subversion

# Set environment variables
ENV HOME /root
ENV DOCKER_DIR $HOME/docker

RUN mkdir $HOME/bin
ENV PATH $PATH:$HOME/bin:$DOCKER_DIR/bin

# Define working directory
WORKDIR $HOME

# Define default command
CMD ["bash"]

# Download host
ENV DL_HOST 168.168.1.85

# Install java
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" -O - \
  http://$DL_HOST/jdk-8u31-linux-x64.tar.gz | tar -zxf - -C /opt 

ENV JAVA_HOME /opt/jdk1.8.0_31
ENV CLASSPATH $JAVA_HOME/lib:.
ENV PATH $PATH:$JAVA_HOME/bin

# Install maven
ENV PATH $PATH:$DOCKER_DIR/maven/apache-maven-3.2.5/bin

# Install erlang
RUN apt-get install -y libncurses5-dev libssl-dev unixodbc unixodbc-dev

RUN wget -O - http://$DL_HOST/otp_src_17.4.tar.gz | tar -xzf - -C /opt && \
  cd /opt/otp_src_17.4 && ./configure && make && make install

ENV ERL_CODE $DOCKER_DIR/erlangcode
ENV ERL_LIBS $ERL_CODE/deps:$ERL_CODE/apps:$ERL_CODE/plugins:$ERL_CODE
ENV PATH $PATH:$ERL_CODE/bin

# Install rabbitmq
RUN wget -O - http://$DL_HOST/rabbitmq-server-generic-unix-3.4.3.tar.gz | tar -xzf - -C /opt && \
  cd /opt/rabbitmq_server-3.4.3/etc/rabbitmq && \
  sed 's/%% \({loopback_users, \[\]}\),/\1/g' rabbitmq.config.example > rabbitmq.config

# Install go
RUN wget -O - http://$DL_HOST/go1.4.1.linux-amd64.tar.gz | tar -xzf - -C /usr/local

ENV GOPATH $DOCKER_DIR/gocode
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin

# Install python
RUN wget -O - https://bootstrap.pypa.io/get-pip.py | python -

# Install ruby
RUN apt-get install -y libffi-dev

RUN wget -O - http://$DL_HOST/ruby-2.2.0.tar.gz | tar -xzf - -C /opt && \
  cd /opt/ruby-2.2.0 && ./configure && make && make install
