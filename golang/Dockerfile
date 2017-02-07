FROM debian:latest
MAINTAINER fatelei@gmail.com

LABEL name="golang-test"
LABEL version=1.0.0
LABEL description="golang test"

# Install go
ARG GOVERSION
ENV GOVERSION ${GOVERSION:-1.7.5}
RUN apt-get update
RUN apt-get install -y curl
RUN cd ~
RUN curl https://storage.googleapis.com/golang/go$GOVERSION.linux-amd64.tar.gz -O
RUN tar -zxvf go$GOVERSION.linux-amd64.tar.gz -C /usr/local/
ENV PATH $PATH:/usr/local/go/bin

# Setup go environment
RUN mkdir -p /root/go/{src,bin,pkg}
RUN mkdir -p /root/go/src/github.com/fatelei
ENV GOPATH /root/go

ENTRYPOINT /bin/bash
