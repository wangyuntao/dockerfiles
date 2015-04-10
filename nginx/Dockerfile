#
# Nginx Dockerfile
# 
# docker run -d -it --name nginx -p 80:80 -v `pwd`:/var/www/html wangyuntao/nginx
#

FROM wangyuntao/ubuntu

MAINTAINER wyt <wyt.daily@gmail.com>

RUN \
  apt-get install -y software-properties-common && \
  add-apt-repository ppa:nginx/development && \
  apt-get update && \
  apt-get install -y nginx && \
  apt-get purge -y software-properties-common && \
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
