FROM wangyuntao/ubuntu
MAINTAINER wyt <wyt.daily@gmail.com>

RUN \
  apt-get update && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y ack-grep curl git man tmux tree unzip vim wget && \
  apt-get install -y htop iftop sysstat dstat && \
  git clone git://github.com/kongjian/tsar.git && cd tsar && make && make install

RUN mkdir $HOME/bin
ENV PATH $PATH:$HOME/bin

ENV DOCKER_DIR $HOME/docker
ENV PATH $PATH:$DOCKER_DIR/bin

CMD ["bash"]