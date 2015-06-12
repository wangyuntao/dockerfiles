FROM wangyuntao/dev
MAINTAINER wyt <wyt.daily@gmail.com>

RUN \
  wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
  dpkg -i erlang-solutions_1.0_all.deb && \
  rm erlang-solutions_1.0_all.deb && \
  apt-get update && \
  apt-get install -y erlang

ENV ERL_CODE $DEV_DIR/code/erlang
ENV ERL_LIBS $ERL_CODE/deps:$ERL_CODE/plugins:$ERL_CODE
ENV PATH $PATH:$ERL_CODE/bin

WORKDIR $DEV_DIR/code/erlang