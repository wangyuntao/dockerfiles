FROM wangyuntao/dev
MAINTAINER wyt <wyt.daily@gmail.com>

RUN \
  curl -s https://packagecloud.io/install/repositories/basho/riak/script.deb.sh | sudo bash && \
  apt-get install riak

CMD ["bash"]