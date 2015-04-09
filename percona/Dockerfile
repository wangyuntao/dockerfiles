#
# Percona Server Dockerfile
#
# http://www.percona.com/doc/percona-server/5.6/installation/apt_repo.html
#
# docker run -v `pwd`:/var/lib/mysql wangyuntao/percona mysql_install_db
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
RUN apt-get update

# Install 
RUN apt-get install -y percona-server-server-5.6

# Modify
RUN \
  sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/my.cnf && \
  echo "mysqld_safe &" > /tmp/config && \
  echo "mysqladmin --silent --wait=30 ping || exit 1" >> /tmp/config && \
  echo "mysql -e 'GRANT ALL PRIVILEGES ON *.* TO \"root\"@\"%\" WITH GRANT OPTION;'" >> /tmp/config && \
  bash /tmp/config && \
  rm -f /tmp/config

# Define mountable directories
VOLUME ["/var/lib/mysql"]

# Define default command
CMD ["mysqld_safe"]

# Expose ports
EXPOSE 3306
