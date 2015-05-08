FROM wangyuntao/dev
MAINTAINER wyt <wyt.daily@gmail.com>

RUN \
  wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
  dpkg -i erlang-solutions_1.0_all.deb && \
  rm erlang-solutions_1.0_all.deb && \
  apt-get update && \
  apt-get install -y elixir

CMD ["bash"]