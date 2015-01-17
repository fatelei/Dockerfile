# pptp docker
FROM ubuntu:14.04

MAINTAINER Wang Lei <fatelei@gmail.com>

# Update
RUN apt-get -y update

# Install pptp
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install pptpd
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install vim

# Add user and password
RUN echo "user * pass *" >> /etc/ppp/chap-secrets

# config pptp
# config address
RUN echo "localip 196.168.220.1" >> /etc/pptpd.conf
RUN echo "remoteip 196.168.220.100-203" >> /etc/pptpd.conf

# copy file
COPY ./forward.sh /usr/bin/forward.sh
RUN chmod u+x /usr/bin/forward.sh

RUN /etc/init.d/pptpd restart

EXPOSE 1723
