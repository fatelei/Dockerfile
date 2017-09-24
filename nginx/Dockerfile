FROM debian:latest
MAINTAINER fatelei@gmail.com

LABEL name="nginx"
LABEL version=1.0.0
LABEL description="Nginx"

# Env
ARG version=1.13.5

# Install
RUN apt-get update
RUN apt-get install curl -y
RUN curl https://nginx.org/download/nginx-$version.tar.gz -O
RUN tar -zxvf nginx-$version.tar.gz

# Install nginx requirement.
RUN apt-get install libpcre++-dev build-essential libssl-dev zlib1g-dev -y
RUN cd nginx-$version && ./configure && make && make install

# Clean
RUN apt-get clean
RUN ln -sf /usr/local/nginx/sbin/nginx /usr/local/bin/nginx

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
