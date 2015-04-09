#
# Percona Server Dockerfile
#

# Pull base image
FROM wangyuntao/ubuntu

# Maintainer
MAINTAINER wyt <wyt.daily@gmail.com>

# Add key
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A

# Add source
RUN echo "deb http://repo.percona.com/apt `lsb_release -cs` main" > /etc/apt/sources.list.d/percona.list

# Update local cache
RUN apt-update

# Install 
RUN apt-get install -y percona-server-server-5.6
