FROM wangyuntao/ubuntu
MAINTAINER wyt <wyt.daily@gmail.com>

RUN 
  apt-get update && \
  apt-get install -y samba smbclient && \
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

CMD ["/usr/sbin/smbd", "-F"]
