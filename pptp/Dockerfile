# pptp docker
FROM ubuntu:14.04

MAINTAINER Wang Lei <fatelei@gmail.com>

# Update
RUN apt-get -y update

# Install pptp
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install pptpd
DEBIAN_FRONTEND=noninteractive apt-get -y install vim

# Add user and password
RUN echo "user * pass *" >> /etc/ppp/chap-secrets

# config pptp
# config address
RUN echo "localip 196.168.220.1" >> /etc/pptpd.conf
RUN echo "remoteip 196.168.220.100-203" >> /etc/pptpd.conf

#config IPV4 forwarding
RUN echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf

RUN sysctl -p
RUN /etc/init.d/pptpd restart

#set iptables forwording rules
RUN sed -i '1s/^/iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE/' /etc/rc.local

EXPOSE 1723

CMD /bin/bash
