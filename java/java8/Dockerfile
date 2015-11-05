FROM ubuntu:latest

ENV TZ Asia/Shanghai

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

RUN \
  add-apt-repository ppa:webupd8team/java && \
  apt-get update && \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-get install -y oracle-java8-installer && \
  apt-get install -y oracle-java8-set-default
