#
# Ubuntu Dockerfile
#

# Pull base image
FROM ubuntu:14.04

# Maintainer
MAINTAINER wyt <wyt.daily@gmail.com>

# Set timezone
ENV TZ Asia/Shanghai

# Set locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# Install
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y man wget curl vim unzip tree tmux git ack-grep

# Set environment variables
ENV HOME /root

# Define working directory
WORKDIR $HOME

# Define default command
CMD ["bash"]