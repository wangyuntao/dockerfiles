#
# Nginx Dockerfile
# 
# docker run -d -it --name nginx -p 80:80 -v `pwd`:/var/www/html wangyuntao/nginx
#

# Pull base image
FROM wangyuntao/ubuntu

# Maintainer
MAINTAINER wyt <wyt.daily@gmail.com>

# Add key
RUN add-apt-repository ppa:nginx/development

# Update local cache
RUN apt-get update

# Install 
RUN apt-get install -y nginx

# Expose
EXPOSE 80 443

# Cmd
CMD ["nginx", "-g", "daemon off;"]
