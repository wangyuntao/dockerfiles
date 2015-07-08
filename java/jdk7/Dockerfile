FROM wangyuntao/java
MAINTAINER wyt <wyt.daily@gmail.com>

RUN \
  add-apt-repository ppa:webupd8team/java && \
  apt-get update && \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-get install -y oracle-java7-installer && \
  apt-get install -y oracle-java7-set-default