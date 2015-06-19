#
# Centos Dockerfile
#

# Pull base image
FROM centos:7

# Maintainer
MAINTAINER wyt <wyt.daily@gmail.com>

# Set timezone
ENV TZ Asia/Shanghai

# Set locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# Set home
ENV HOME /root

# Set work dir
WORKDIR $HOME

# Set default cmd
CMD ["bash"]