FROM wangyuntao/dev
MAINTAINER wyt <wyt.daily@gmail.com>

RUN \
  apt-get update && \
  curl -s https://packagecloud.io/install/repositories/basho/riak/script.deb.sh | sudo bash && \
  apt-get install -y riak

CMD ["bash"]