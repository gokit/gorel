FROM influx6/mongrel:latest
MAINTAINER Ewetumo Alexander <trinoxf@gmail.com>

RUN apk add --no-cache go musl-dev libc-dev && rm -rf /var/cache/apk/*

RUN mkdir -p /go/src
ENV GOPATH /go
WORKDIR /go/src

