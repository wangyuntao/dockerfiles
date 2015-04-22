FROM wangyuntao/jdk7
MAINTAINER wyt <wyt.daily@gmail.com>

RUN apt-get update
RUN apt-get install -y \
  build-essential man wget curl vim unzip tree tmux git ack-grep

RUN mkdir $HOME/bin
ENV PATH $PATH:$HOME/bin

ENV DOCKER_DIR $HOME/docker
ENV PATH $PATH:$DOCKER_DIR/bin
ENV PATH $PATH:$DOCKER_DIR/maven/apache-maven-3.2.5/bin

RUN \
  wget -O - \
  https://github.com/google/protobuf/releases/download/v2.6.1/protobuf-2.6.1.tar.gz | \
  tar -zxf - -C /opt && \
  cd /opt/protobuf-2.6.1 && \
  ./configure && make && make install

ENV LD_LIBRARY_PATH /usr/local/lib

WORKDIR $HOME
CMD ["bash"]