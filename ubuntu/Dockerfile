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

# Define utils
ENV CLEAN apt-get autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set home
ENV HOME /root

# Set work dir
WORKDIR $HOME

# Set default comand
CMD ["bash"]