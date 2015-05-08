FROM wangyuntao/ubuntu
MAINTAINER wyt <wyt.daily@gmail.com>

RUN \
  apt-get update && \
  apt-get install -y build-essential man wget curl vim unzip tree tmux htop git ack-grep

RUN mkdir $HOME/bin
ENV PATH $PATH:$HOME/bin

ENV DOCKER_DIR $HOME/docker
ENV PATH $PATH:$DOCKER_DIR/bin

CMD ["bash"]